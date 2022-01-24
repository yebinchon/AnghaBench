#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_blacklist_entry ;
struct TYPE_4__ {int /*<<< orphan*/ * regexp_list; int /*<<< orphan*/ * entries; int /*<<< orphan*/  size; scalar_t__ pos; } ;
typedef  TYPE_1__ zend_blacklist ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_LOG_FATAL ; 
 int /*<<< orphan*/  ZEND_BLACKLIST_BLOCK_SIZE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(zend_blacklist *blacklist)
{
	blacklist->pos = 0;
	blacklist->size = ZEND_BLACKLIST_BLOCK_SIZE;

	if (blacklist->entries != NULL) {
		FUNC1(blacklist);
	}

	blacklist->entries = (zend_blacklist_entry *) FUNC0(sizeof(zend_blacklist_entry), blacklist->size);
	if (!blacklist->entries) {
		FUNC2(ACCEL_LOG_FATAL, "Blacklist initialization: no memory\n");
		return;
	}
	blacklist->regexp_list = NULL;
}