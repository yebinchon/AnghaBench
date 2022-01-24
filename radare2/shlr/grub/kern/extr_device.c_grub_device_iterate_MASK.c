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
struct grub_device_iterate_closure {int (* hook ) (char const*,void*) ;void* closure; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct grub_device_iterate_closure*) ; 
 int /*<<< orphan*/  iterate_disk ; 

int
FUNC1 (int (*hook) (const char *name, void *closure),
		     void *closure)
{
  struct grub_device_iterate_closure c;

  c.hook = hook;
  c.closure = closure;
  /* Only disk devices are supported at the moment.  */
  return FUNC0 (iterate_disk, &c);
}