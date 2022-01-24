#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grub_fb_data {char* fb_list; int ofs; int pri_size; } ;
struct fb_mbr {scalar_t__ fb_magic; int end_magic; int lba; int boot_base; } ;
struct fb_data {int boot_size; int pri_size; scalar_t__ ver_major; scalar_t__ ver_minor; int list_used; } ;
typedef  scalar_t__ grub_uint32_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FB_AR_MAGIC_LONG ; 
 scalar_t__ FB_MAGIC_LONG ; 
 scalar_t__ FB_VER_MAJOR ; 
 scalar_t__ FB_VER_MINOR ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grub_fb_data*) ; 
 struct grub_fb_data* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static struct grub_fb_data *
FUNC5 (grub_disk_t disk)
{
  struct fb_mbr *m;
  struct fb_data *d;
  char buf[512];
  struct grub_fb_data *data;
  int boot_base, boot_size, list_used, pri_size, ofs, i;
  char *fb_list, *p1, *p2;
  grub_uint32_t *grub32;

  if (FUNC0 (disk, 0, 0, sizeof (buf), buf))
    goto fail;

  m = (struct fb_mbr *) buf;
  d = (struct fb_data *) buf;
  grub32 = (grub_uint32_t *)&buf;
  if (*grub32 == FB_AR_MAGIC_LONG)
    {
      ofs = 0;
      boot_base = 0;
      boot_size = 0;
      pri_size = 0;
    }
  else
    {
      if ((m->fb_magic != FB_MAGIC_LONG) || (m->end_magic != 0xaa55))
	goto fail;

      ofs = m->lba;
      boot_base = m->boot_base;

      if (FUNC0 (disk, boot_base + 1 - ofs, 0, sizeof (buf), buf))
	goto fail;

      boot_size = d->boot_size;
      pri_size = d->pri_size;
    }

  if ((d->ver_major != FB_VER_MAJOR) || (d->ver_minor != FB_VER_MINOR))
    goto fail;

  list_used = d->list_used;
  data = FUNC3 (sizeof (*data) + (list_used << 9));
  if (! data)
    goto fail;

  fb_list = data->fb_list;
  if (FUNC0 (disk, boot_base + 1 + boot_size - ofs, 0,
		      (list_used << 9), fb_list))
    {
      FUNC2 (data);
      goto fail;
    }

  p1 = p2 = fb_list;
  for (i = 0; i < list_used - 1; i++)
    {
      p1 += 510;
      p2 += 512;
      FUNC4 (p1, p2, 510);
    }

  data->ofs = ofs;
  data->pri_size = pri_size;
  return data;

 fail:
  FUNC1 (GRUB_ERR_BAD_FS, "not a fb filesystem");
  return 0;
}