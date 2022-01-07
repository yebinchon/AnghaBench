
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct grub_iso9660_susp_entry {int len; scalar_t__ sig; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ magic; } ;
struct grub_iso9660_primary_voldesc {int* escape; TYPE_1__ voldesc; } ;
struct grub_iso9660_dir {int namelen; int len; } ;
struct TYPE_5__ {int first_sector; } ;
struct TYPE_6__ {TYPE_2__ rootdir; } ;
struct grub_iso9660_data {int joliet; TYPE_3__ voldesc; int susp_skip; int disk; } ;
typedef int rootdir ;
typedef int grub_disk_t ;


 int * ENTRY_DATA (struct grub_iso9660_susp_entry*) ;
 int GRUB_ERR_BAD_FS ;
 int GRUB_ISO9660_LOG2_BLKSZ ;
 scalar_t__ GRUB_ISO9660_VOLDESC_END ;
 scalar_t__ GRUB_ISO9660_VOLDESC_PRIMARY ;
 scalar_t__ GRUB_ISO9660_VOLDESC_SUPP ;
 char* calloc (int,int) ;
 scalar_t__ grub_disk_read (int ,int,int,int,char*) ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_iso9660_data*) ;
 scalar_t__ grub_iso9660_susp_iterate (struct grub_iso9660_data*,int,int,int,int ,struct grub_iso9660_data*) ;
 int grub_le_to_cpu32 (int ) ;
 int grub_memcpy (char*,char*,int) ;
 scalar_t__ grub_strncmp (char*,char*,int) ;
 struct grub_iso9660_data* grub_zalloc (int) ;
 int susp_iterate ;

__attribute__((used)) static struct grub_iso9660_data *
grub_iso9660_mount (grub_disk_t disk)
{
  struct grub_iso9660_data *data = 0;
  struct grub_iso9660_dir rootdir;
  int sua_pos;
  int sua_size;
  char *sua;
  struct grub_iso9660_susp_entry *entry;
  struct grub_iso9660_primary_voldesc voldesc;
  int block;

  data = grub_zalloc (sizeof (struct grub_iso9660_data));
  if (! data)
    return 0;

  data->disk = disk;

  block = 16;
  do
    {
      int copy_voldesc = 0;


      if (grub_disk_read (disk, block << GRUB_ISO9660_LOG2_BLKSZ, 0,
     sizeof (struct grub_iso9660_primary_voldesc),
     (char *) &voldesc))
        {
          grub_error (GRUB_ERR_BAD_FS, "not a ISO9660 filesystem");
          goto fail;
        }

      if (grub_strncmp ((char *) voldesc.voldesc.magic, "CD001", 5) != 0)
        {
          grub_error (GRUB_ERR_BAD_FS, "not a ISO9660 filesystem");
          goto fail;
        }

      if (voldesc.voldesc.type == GRUB_ISO9660_VOLDESC_PRIMARY)
        copy_voldesc = 1;
      else if ((voldesc.voldesc.type == GRUB_ISO9660_VOLDESC_SUPP) &&
               (voldesc.escape[0] == 0x25) && (voldesc.escape[1] == 0x2f) &&
               ((voldesc.escape[2] == 0x40) ||
                (voldesc.escape[2] == 0x43) ||
                (voldesc.escape[2] == 0x45)))
        {
          copy_voldesc = 1;
          data->joliet = 1;
        }

      if (copy_voldesc)
        grub_memcpy((char *) &data->voldesc, (char *) &voldesc,
                    sizeof (struct grub_iso9660_primary_voldesc));

      block++;
    } while (voldesc.voldesc.type != GRUB_ISO9660_VOLDESC_END);



  if (grub_disk_read (disk,
        (grub_le_to_cpu32 (data->voldesc.rootdir.first_sector)
         << GRUB_ISO9660_LOG2_BLKSZ), 0,
        sizeof (rootdir), (char *) &rootdir))
    {
      grub_error (GRUB_ERR_BAD_FS, "not a ISO9660 filesystem");
      goto fail;
    }

  sua_pos = (sizeof (rootdir) + rootdir.namelen
      + (rootdir.namelen % 2) - 1);
  sua_size = rootdir.len - sua_pos;


  sua = calloc (1, sua_size + 1024);
  if (! sua)
    goto fail;

  ut32 addr = grub_le_to_cpu32 (data->voldesc.rootdir.first_sector) << GRUB_ISO9660_LOG2_BLKSZ;
  if (grub_disk_read (disk, addr, sua_pos, sua_size, sua)) {
      grub_error (GRUB_ERR_BAD_FS, "not a ISO9660 filesystem");
      goto fail;
    }


  entry = (struct grub_iso9660_susp_entry *) sua;


  if (grub_strncmp ((char *) entry->sig, "SP", 2) == 0)
    {



      data->susp_skip = ENTRY_DATA(entry)[2];
      entry = (struct grub_iso9660_susp_entry *) ((char *) entry + entry->len);



      if (grub_iso9660_susp_iterate (data,
         (grub_le_to_cpu32 (data->voldesc.rootdir.first_sector)
          << GRUB_ISO9660_LOG2_BLKSZ),
         sua_pos, sua_size, susp_iterate, data))
 goto fail;
    }


  return data;

 fail:
  grub_free (data);
  return 0;
}
