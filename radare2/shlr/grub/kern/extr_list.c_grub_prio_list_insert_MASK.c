#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct grub_prio_list_insert_closure {scalar_t__ inactive; } ;
typedef  TYPE_1__* grub_prio_list_t ;
typedef  int /*<<< orphan*/  grub_list_test_t ;
struct TYPE_6__ {int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  GRUB_PRIO_LIST_FLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct grub_prio_list_insert_closure*) ; 
 scalar_t__ grub_prio_list_insert_test ; 

void
FUNC3 (grub_prio_list_t *head, grub_prio_list_t nitem)
{
  struct grub_prio_list_insert_closure c;

  c.inactive = 0;
  FUNC2 (FUNC1 (head), FUNC0 (nitem),
		    (grub_list_test_t) grub_prio_list_insert_test, &c);
  if (! c.inactive)
    nitem->prio |= GRUB_PRIO_LIST_FLAG_ACTIVE;
}