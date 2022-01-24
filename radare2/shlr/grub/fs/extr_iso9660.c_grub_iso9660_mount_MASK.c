#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ut32 ;
struct grub_iso9660_susp_entry {int len; scalar_t__ sig; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ magic; } ;
struct grub_iso9660_primary_voldesc {int* escape; TYPE_1__ voldesc; } ;
struct grub_iso9660_dir {int namelen; int len; } ;
struct TYPE_5__ {int /*<<< orphan*/  first_sector; } ;
struct TYPE_6__ {TYPE_2__ rootdir; } ;
struct grub_iso9660_data {int joliet; TYPE_3__ voldesc; int /*<<< orphan*/  susp_skip; int /*<<< orphan*/  disk; } ;
typedef  int /*<<< orphan*/  rootdir ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct grub_iso9660_susp_entry*) ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int GRUB_ISO9660_LOG2_BLKSZ ; 
 scalar_t__ GRUB_ISO9660_VOLDESC_END ; 
 scalar_t__ GRUB_ISO9660_VOLDESC_PRIMARY ; 
 scalar_t__ GRUB_ISO9660_VOLDESC_SUPP ; 
 char* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_iso9660_data*) ; 
 scalar_t__ FUNC5 (struct grub_iso9660_data*,int,int,int,int /*<<< orphan*/ ,struct grub_iso9660_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 struct grub_iso9660_data* FUNC9 (int) ; 
 int /*<<< orphan*/  susp_iterate ; 

__attribute__((used)) static struct grub_iso9660_data *
FUNC10 (grub_disk_t disk)
{
  struct grub_iso9660_data *data = 0;
  struct grub_iso9660_dir rootdir;
  int sua_pos;
  int sua_size;
  char *sua;
  struct grub_iso9660_susp_entry *entry;
  struct grub_iso9660_primary_voldesc voldesc;
  int block;

  data = FUNC9 (sizeof (struct grub_iso9660_data));
  if (! data)
    return 0;

  data->disk = disk;

  block = 16;
  do
    {
      int copy_voldesc = 0;

      /* Read the superblock.  */
      if (FUNC2 (disk, block << GRUB_ISO9660_LOG2_BLKSZ, 0,
			  sizeof (struct grub_iso9660_primary_voldesc),
			  (char *) &voldesc))
        {
          FUNC3 (GRUB_ERR_BAD_FS, "not a ISO9660 filesystem");
          goto fail;
        }

      if (FUNC8 ((char *) voldesc.voldesc.magic, "CD001", 5) != 0)
        {
          FUNC3 (GRUB_ERR_BAD_FS, "not a ISO9660 filesystem");
          goto fail;
        }

      if (voldesc.voldesc.type == GRUB_ISO9660_VOLDESC_PRIMARY)
        copy_voldesc = 1;
      else if ((voldesc.voldesc.type == GRUB_ISO9660_VOLDESC_SUPP) &&
               (voldesc.escape[0] == 0x25) && (voldesc.escape[1] == 0x2f) &&
               ((voldesc.escape[2] == 0x40) ||	/* UCS-2 Level 1.  */
                (voldesc.escape[2] == 0x43) ||  /* UCS-2 Level 2.  */
                (voldesc.escape[2] == 0x45)))	/* UCS-2 Level 3.  */
        {
          copy_voldesc = 1;
          data->joliet = 1;
        }

      if (copy_voldesc)
        FUNC7((char *) &data->voldesc, (char *) &voldesc,
                    sizeof (struct grub_iso9660_primary_voldesc));

      block++;
    } while (voldesc.voldesc.type != GRUB_ISO9660_VOLDESC_END);

  /* Read the system use area and test it to see if SUSP is
     supported.  */
  if (FUNC2 (disk,
		      (FUNC6 (data->voldesc.rootdir.first_sector)
		       << GRUB_ISO9660_LOG2_BLKSZ), 0,
		      sizeof (rootdir), (char *) &rootdir))
    {
      FUNC3 (GRUB_ERR_BAD_FS, "not a ISO9660 filesystem");
      goto fail;
    }

  sua_pos = (sizeof (rootdir) + rootdir.namelen
	     + (rootdir.namelen % 2) - 1);
  sua_size = rootdir.len - sua_pos;

  //sua = grub_malloc (sua_size + 2);
  sua = FUNC1 (1, sua_size + 1024);
  if (! sua)
    goto fail;

  ut32 addr = FUNC6 (data->voldesc.rootdir.first_sector) << GRUB_ISO9660_LOG2_BLKSZ;
  if (FUNC2 (disk, addr, sua_pos, sua_size, sua)) {
      FUNC3 (GRUB_ERR_BAD_FS, "not a ISO9660 filesystem");
      goto fail;
    }

#if 1
  entry = (struct grub_iso9660_susp_entry *) sua;

  /* Test if the SUSP protocol is used on this filesystem.  */
  if (FUNC8 ((char *) entry->sig, "SP", 2) == 0)
    {
      /* The 2nd data byte stored how many bytes are skipped every time
	 to get to the SUA (System Usage Area).  */
      // grub_uint8_t *data = ENTRY_DATA(entry);
      data->susp_skip = FUNC0(entry)[2]; // data[2]; // entry->data[2];
      entry = (struct grub_iso9660_susp_entry *) ((char *) entry + entry->len);

      /* Iterate over the entries in the SUA area to detect
	 extensions.  */
      if (FUNC5 (data,
				     (FUNC6 (data->voldesc.rootdir.first_sector)
				      << GRUB_ISO9660_LOG2_BLKSZ),
				     sua_pos, sua_size, susp_iterate, data))
	goto fail;
    }
#endif

  return data;

 fail:
  FUNC4 (data);
  return 0;
}