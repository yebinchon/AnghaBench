#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* grub_list_t ;
typedef  scalar_t__ (* grub_list_hook_t ) (TYPE_1__*,void*) ;
struct TYPE_5__ {struct TYPE_5__* next; } ;

/* Variables and functions */

int
FUNC0 (grub_list_t head, grub_list_hook_t hook, void *closure)
{
  grub_list_t p;

  for (p = head; p; p = p->next)
    if (hook (p, closure))
      return 1;

  return 0;
}