#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* grub_fs_t ;
typedef  TYPE_3__* grub_device_t ;
struct TYPE_11__ {TYPE_1__* net; scalar_t__ disk; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* dir ) (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; struct TYPE_10__* next; } ;
struct TYPE_9__ {TYPE_2__* fs; } ;

/* Variables and functions */
 scalar_t__ GRUB_ERR_BAD_FS ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int /*<<< orphan*/  GRUB_ERR_UNKNOWN_FS ; 
 int /*<<< orphan*/  dummy_func ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 TYPE_2__* grub_fs_list ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

grub_fs_t
FUNC7 (grub_device_t device)
{
  grub_fs_t p;

  if (device->disk)
    {
      /* Make it sure not to have an infinite recursive calls.  */
      static int count = 0;

      for (p = grub_fs_list; p; p = p->next)
	{
	  FUNC0 ("fs", "Detecting %s...\n", p->name);
	  (p->dir) (device, "/", dummy_func, 0);
	  if (grub_errno == GRUB_ERR_NONE)
	    return p;

	  FUNC3 ();
	  FUNC0 ("fs", "%s detection failed.\n", p->name);
	  FUNC2 ();

	  if (grub_errno != GRUB_ERR_BAD_FS)
	    return 0;

	  grub_errno = GRUB_ERR_NONE;
	}

      /* Let's load modules automatically.  */
      if (&grub_fs_autoload_hook && count == 0)
	{
	  count++;

	  while (FUNC4 ())
	    {
	      p = grub_fs_list;

	      (p->dir) (device, "/", dummy_func, 0);
	      if (grub_errno == GRUB_ERR_NONE)
		{
		  count--;
		  return p;
		}

	      if (grub_errno != GRUB_ERR_BAD_FS)
		{
		  count--;
		  return 0;
		}

	      grub_errno = GRUB_ERR_NONE;
	    }

	  count--;
	}
    }
  else if (device->net->fs)
    return device->net->fs;

  FUNC1 (GRUB_ERR_UNKNOWN_FS, "unknown filesystem");
  return 0;
}