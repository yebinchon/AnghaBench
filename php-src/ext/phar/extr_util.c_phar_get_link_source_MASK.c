#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* link; TYPE_1__* phar; } ;
typedef  TYPE_2__ phar_entry_info ;
struct TYPE_7__ {int /*<<< orphan*/  manifest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

phar_entry_info *FUNC4(phar_entry_info *entry) /* {{{ */
{
	phar_entry_info *link_entry;
	char *link;

	if (!entry->link) {
		return entry;
	}

	link = FUNC1(entry);
	if (NULL != (link_entry = FUNC3(&(entry->phar->manifest), entry->link, FUNC2(entry->link))) ||
		NULL != (link_entry = FUNC3(&(entry->phar->manifest), link, FUNC2(link)))) {
		if (link != entry->link) {
			FUNC0(link);
		}
		return FUNC4(link_entry);
	} else {
		if (link != entry->link) {
			FUNC0(link);
		}
		return NULL;
	}
}