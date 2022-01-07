
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_ntfs_file {TYPE_1__* data; int ino; int inode_read; } ;
struct grub_ntfs_attr {int dummy; } ;
typedef int grub_size_t ;
typedef scalar_t__ grub_fshelp_node_t ;
typedef int grub_disk_addr_t ;
struct TYPE_2__ {int idx_size; } ;


 int AT_BITMAP ;
 int AT_INDEX_ALLOCATION ;
 int AT_INDEX_ROOT ;
 int BLK_SHR ;
 int GRUB_ERR_BAD_FS ;
 char* find_attr (struct grub_ntfs_attr*,int ) ;
 scalar_t__ fixup (TYPE_1__*,char*,int,char*) ;
 int free_attr (struct grub_ntfs_attr*) ;
 int grub_error (int ,char*) ;
 int grub_free (char*) ;
 char* grub_malloc (int) ;
 int grub_memcpy (char*,char*,int) ;
 int init_attr (struct grub_ntfs_attr*,struct grub_ntfs_file*) ;
 scalar_t__ init_file (struct grub_ntfs_file*,int ) ;
 int list_file (struct grub_ntfs_file*,char*,int (*) (char const*,int,scalar_t__,void*),void*) ;
 char* locate_attr (struct grub_ntfs_attr*,struct grub_ntfs_file*,int ) ;
 scalar_t__ read_attr (struct grub_ntfs_attr*,char*,int,int,int ,int ,int ,int ) ;
 scalar_t__ read_data (struct grub_ntfs_attr*,char*,char*,int ,int,int ,int ,int ,int ) ;
 int u16at (char*,int) ;
 int u32at (char*,int) ;

__attribute__((used)) static int
grub_ntfs_iterate_dir (grub_fshelp_node_t dir,
         int (*hook) (const char *filename,
        enum grub_fshelp_filetype filetype,
        grub_fshelp_node_t node,
        void *closure),
         void *closure)
{
  unsigned char *bitmap;
  struct grub_ntfs_attr attr, *at;
  char *cur_pos, *indx, *bmp;
  int ret = 0;
  grub_size_t bitmap_len;
  struct grub_ntfs_file *mft;

  mft = (struct grub_ntfs_file *) dir;

  if (!mft->inode_read)
    {
      if (init_file (mft, mft->ino))
 return 0;
    }

  indx = ((void*)0);
  bmp = ((void*)0);

  at = &attr;
  init_attr (at, mft);
  while (1)
    {
      if ((cur_pos = find_attr (at, AT_INDEX_ROOT)) == ((void*)0))
 {
   grub_error (GRUB_ERR_BAD_FS, "no $INDEX_ROOT");
   goto done;
 }


      if ((u32at (cur_pos, 8) != 0x180400) ||
   (u32at (cur_pos, 0x18) != 0x490024) ||
   (u32at (cur_pos, 0x1C) != 0x300033))
 continue;
      cur_pos += u16at (cur_pos, 0x14);
      if (*cur_pos != 0x30)
 continue;
      break;
    }

  cur_pos += 0x10;
  ret = list_file (mft, cur_pos + u16at (cur_pos, 0), hook, closure);
  if (ret)
    goto done;

  bitmap = ((void*)0);
  bitmap_len = 0;
  free_attr (at);
  init_attr (at, mft);
  while ((cur_pos = find_attr (at, AT_BITMAP)) != ((void*)0))
    {
      int ofs;

      ofs = (unsigned char) cur_pos[0xA];

      if ((cur_pos[9] == 4) &&
   (u32at (cur_pos, ofs) == 0x490024) &&
   (u32at (cur_pos, ofs + 4) == 0x300033))
 {
          int is_resident = (cur_pos[8] == 0);

          bitmap_len = ((is_resident) ? u32at (cur_pos, 0x10) :
                        u32at (cur_pos, 0x28));

          bmp = grub_malloc (bitmap_len);
          if (bmp == ((void*)0))
            goto done;

   if (is_resident)
     {
              grub_memcpy (bmp, (char *) (cur_pos + u16at (cur_pos, 0x14)),
                           bitmap_len);
     }
          else
            {
              if (read_data (at, cur_pos, bmp, 0, bitmap_len, 0, 0, 0, 0))
                {
                  grub_error (GRUB_ERR_BAD_FS,
                              "fails to read non-resident $BITMAP");
                  goto done;
                }
              bitmap_len = u32at (cur_pos, 0x30);
            }

          bitmap = (unsigned char *) bmp;
   break;
 }
    }

  free_attr (at);
  cur_pos = locate_attr (at, mft, AT_INDEX_ALLOCATION);
  while (cur_pos != ((void*)0))
    {

      if ((u32at (cur_pos, 8) == 0x400401) &&
   (u32at (cur_pos, 0x40) == 0x490024) &&
   (u32at (cur_pos, 0x44) == 0x300033))
 break;
      cur_pos = find_attr (at, AT_INDEX_ALLOCATION);
    }

  if ((!cur_pos) && (bitmap))
    {
      grub_error (GRUB_ERR_BAD_FS, "$BITMAP without $INDEX_ALLOCATION");
      goto done;
    }

  if (bitmap)
    {
      grub_disk_addr_t v, i;

      indx = grub_malloc (mft->data->idx_size << BLK_SHR);
      if (indx == ((void*)0))
 goto done;

      v = 1;
      for (i = 0; i < (grub_disk_addr_t)bitmap_len * 8; i++)
 {
   if (*bitmap & v)
     {
       if ((read_attr
     (at, indx, i * (mft->data->idx_size << BLK_SHR),
      (mft->data->idx_size << BLK_SHR), 0, 0, 0, 0))
    || (fixup (mft->data, indx, mft->data->idx_size, "INDX")))
  goto done;
       ret = list_file (mft, &indx[0x18 + u16at (indx, 0x18)], hook,
          closure);
       if (ret)
  goto done;
     }
   v <<= 1;
   if (v >= 0x100)
     {
       v = 1;
       bitmap++;
     }
 }
    }

done:
  free_attr (at);
  grub_free (indx);
  grub_free (bmp);

  return ret;
}
