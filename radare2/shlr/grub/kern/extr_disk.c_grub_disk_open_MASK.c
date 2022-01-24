#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ grub_uint64_t ;
typedef  int grub_size_t ;
typedef  TYPE_1__* grub_disk_t ;
typedef  TYPE_2__* grub_disk_dev_t ;
struct TYPE_9__ {scalar_t__ (* open ) (char*,TYPE_1__*) ;struct TYPE_9__* next; } ;
struct TYPE_8__ {int /*<<< orphan*/  partition; TYPE_2__* dev; int /*<<< orphan*/  has_partitions; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int GRUB_CACHE_TIMEOUT ; 
 scalar_t__ GRUB_ERR_BAD_DEVICE ; 
 scalar_t__ GRUB_ERR_NONE ; 
 scalar_t__ GRUB_ERR_UNKNOWN_DEVICE ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* grub_disk_dev_list ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ grub_last_time ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (char*,TYPE_1__*) ; 

grub_disk_t
FUNC15 (const char *name)
{
  const char *p;
  grub_disk_t disk;
  grub_disk_dev_t dev;
  char *raw = (char *) name;
  grub_uint64_t current_time;

  FUNC3 ("disk", "Opening `%s'...\n", name);

  disk = (grub_disk_t) FUNC13 (sizeof (*disk));
  if (! disk)
    return 0;

  disk->name = FUNC12 (name);
  if (! disk->name)
    goto fail;

  p = FUNC0 (name);
  if (p)
    {
      grub_size_t len = p - name;

      raw = FUNC9 (len + 1);
      if (! raw)
	goto fail;

      FUNC10 (raw, name, len);
      raw[len] = '\0';
    }

  for (dev = grub_disk_dev_list; dev; dev = dev->next)
    {
      if ((dev->open) (raw, disk) == GRUB_ERR_NONE)
	break;
      else if (grub_errno == GRUB_ERR_UNKNOWN_DEVICE)
	grub_errno = GRUB_ERR_NONE;
      else
	goto fail;
    }

  if (! dev)
    {
      FUNC4 (GRUB_ERR_UNKNOWN_DEVICE, "no such disk");
      goto fail;
    }

  if (p && ! disk->has_partitions)
    {
      FUNC4 (GRUB_ERR_BAD_DEVICE, "no partition on this disk");
      goto fail;
    }

  disk->dev = dev;

  if (p)
    {
      disk->partition = FUNC11 (disk, p + 1);
      if (! disk->partition)
	{
	  FUNC4 (GRUB_ERR_UNKNOWN_DEVICE, "no such partition");
	  goto fail;
	}
    }

  /* The cache will be invalidated about 2 seconds after a device was
     closed.  */
  current_time = FUNC8 ();

  if (current_time > (grub_last_time
		      + GRUB_CACHE_TIMEOUT * 1000))
    FUNC1 ();

  grub_last_time = current_time;

 fail:

  if (raw && raw != name)
    FUNC7 (raw);

  if (grub_errno != GRUB_ERR_NONE)
    {
      FUNC6 ();
      FUNC3 ("disk", "Opening `%s' failed.\n", name);
      FUNC5 ();

      FUNC2 (disk);
      return 0;
    }

  return disk;
}