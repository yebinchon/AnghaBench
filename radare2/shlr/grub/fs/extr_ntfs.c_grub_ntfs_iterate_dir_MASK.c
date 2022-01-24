#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct grub_ntfs_file {TYPE_1__* data; int /*<<< orphan*/  ino; int /*<<< orphan*/  inode_read; } ;
struct grub_ntfs_attr {int dummy; } ;
typedef  int grub_size_t ;
typedef  scalar_t__ grub_fshelp_node_t ;
typedef  int grub_disk_addr_t ;
struct TYPE_2__ {int idx_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_BITMAP ; 
 int /*<<< orphan*/  AT_INDEX_ALLOCATION ; 
 int /*<<< orphan*/  AT_INDEX_ROOT ; 
 int BLK_SHR ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 char* FUNC0 (struct grub_ntfs_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grub_ntfs_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct grub_ntfs_attr*,struct grub_ntfs_file*) ; 
 scalar_t__ FUNC8 (struct grub_ntfs_file*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct grub_ntfs_file*,char*,int (*) (char const*,int,scalar_t__,void*),void*) ; 
 char* FUNC10 (struct grub_ntfs_attr*,struct grub_ntfs_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct grub_ntfs_attr*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct grub_ntfs_attr*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int) ; 
 int FUNC14 (char*,int) ; 

__attribute__((used)) static int
FUNC15 (grub_fshelp_node_t dir,
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
      if (FUNC8 (mft, mft->ino))
	return 0;
    }

  indx = NULL;
  bmp = NULL;

  at = &attr;
  FUNC7 (at, mft);
  while (1)
    {
      if ((cur_pos = FUNC0 (at, AT_INDEX_ROOT)) == NULL)
	{
	  FUNC3 (GRUB_ERR_BAD_FS, "no $INDEX_ROOT");
	  goto done;
	}

      /* Resident, Namelen=4, Offset=0x18, Flags=0x00, Name="$I30" */
      if ((FUNC14 (cur_pos, 8) != 0x180400) ||
	  (FUNC14 (cur_pos, 0x18) != 0x490024) ||
	  (FUNC14 (cur_pos, 0x1C) != 0x300033))
	continue;
      cur_pos += FUNC13 (cur_pos, 0x14);
      if (*cur_pos != 0x30)	/* Not filename index */
	continue;
      break;
    }

  cur_pos += 0x10;		/* Skip index root */
  ret = FUNC9 (mft, cur_pos + FUNC13 (cur_pos, 0), hook, closure);
  if (ret)
    goto done;

  bitmap = NULL;
  bitmap_len = 0;
  FUNC2 (at);
  FUNC7 (at, mft);
  while ((cur_pos = FUNC0 (at, AT_BITMAP)) != NULL)
    {
      int ofs;

      ofs = (unsigned char) cur_pos[0xA];
      /* Namelen=4, Name="$I30" */
      if ((cur_pos[9] == 4) &&
	  (FUNC14 (cur_pos, ofs) == 0x490024) &&
	  (FUNC14 (cur_pos, ofs + 4) == 0x300033))
	{
          int is_resident = (cur_pos[8] == 0);

          bitmap_len = ((is_resident) ? FUNC14 (cur_pos, 0x10) :
                        FUNC14 (cur_pos, 0x28));

          bmp = FUNC5 (bitmap_len);
          if (bmp == NULL)
            goto done;

	  if (is_resident)
	    {
              FUNC6 (bmp, (char *) (cur_pos + FUNC13 (cur_pos, 0x14)),
                           bitmap_len);
	    }
          else
            {
              if (FUNC12 (at, cur_pos, bmp, 0, bitmap_len, 0, 0, 0, 0))
                {
                  FUNC3 (GRUB_ERR_BAD_FS,
                              "fails to read non-resident $BITMAP");
                  goto done;
                }
              bitmap_len = FUNC14 (cur_pos, 0x30);
            }

          bitmap = (unsigned char *) bmp;
	  break;
	}
    }

  FUNC2 (at);
  cur_pos = FUNC10 (at, mft, AT_INDEX_ALLOCATION);
  while (cur_pos != NULL)
    {
      /* Non-resident, Namelen=4, Offset=0x40, Flags=0, Name="$I30" */
      if ((FUNC14 (cur_pos, 8) == 0x400401) &&
	  (FUNC14 (cur_pos, 0x40) == 0x490024) &&
	  (FUNC14 (cur_pos, 0x44) == 0x300033))
	break;
      cur_pos = FUNC0 (at, AT_INDEX_ALLOCATION);
    }

  if ((!cur_pos) && (bitmap))
    {
      FUNC3 (GRUB_ERR_BAD_FS, "$BITMAP without $INDEX_ALLOCATION");
      goto done;
    }

  if (bitmap)
    {
      grub_disk_addr_t v, i;

      indx = FUNC5 (mft->data->idx_size << BLK_SHR);
      if (indx == NULL)
	goto done;

      v = 1;
      for (i = 0; i < (grub_disk_addr_t)bitmap_len * 8; i++)
	{
	  if (*bitmap & v)
	    {
	      if ((FUNC11
		   (at, indx, i * (mft->data->idx_size << BLK_SHR),
		    (mft->data->idx_size << BLK_SHR), 0, 0, 0, 0))
		  || (FUNC1 (mft->data, indx, mft->data->idx_size, "INDX")))
		goto done;
	      ret = FUNC9 (mft, &indx[0x18 + FUNC13 (indx, 0x18)], hook,
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
  FUNC2 (at);
  FUNC4 (indx);
  FUNC4 (bmp);

  return ret;
}