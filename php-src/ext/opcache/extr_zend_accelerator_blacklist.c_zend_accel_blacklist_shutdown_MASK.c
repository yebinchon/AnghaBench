#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  re; struct TYPE_6__* path; } ;
typedef  TYPE_1__ zend_regexp_list ;
typedef  TYPE_1__ zend_blacklist_entry ;
struct TYPE_7__ {int pos; TYPE_1__* regexp_list; TYPE_1__* entries; } ;
typedef  TYPE_3__ zend_blacklist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(zend_blacklist *blacklist)
{
	zend_blacklist_entry *p = blacklist->entries, *end = blacklist->entries + blacklist->pos;

	while (p<end) {
		FUNC0(p->path);
		p++;
	}
	FUNC0(blacklist->entries);
	blacklist->entries = NULL;
	if (blacklist->regexp_list) {
		zend_regexp_list *temp, *it = blacklist->regexp_list;
		while (it) {
			FUNC1(it->re);
			temp = it;
			it = it->next;
			FUNC0(temp);
		}
	}
}