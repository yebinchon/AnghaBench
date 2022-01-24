#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ignore; int applied; struct TYPE_7__* next; scalar_t__ sourceline; struct TYPE_7__* filename; int /*<<< orphan*/ * errmsg; struct TYPE_7__* value; struct TYPE_7__* name; } ;
typedef  TYPE_1__ ConfigVariable ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(ConfigVariable **head_p, ConfigVariable **tail_p,
						  const char *name, const char *value)
{
	ConfigVariable *item,
			   *next,
			   *prev = NULL;

	/*
	 * Remove any existing match(es) for "name".  Normally there'd be at most
	 * one, but if external tools have modified the config file, there could
	 * be more.
	 */
	for (item = *head_p; item != NULL; item = next)
	{
		next = item->next;
		if (FUNC0(item->name, name) == 0)
		{
			/* found a match, delete it */
			if (prev)
				prev->next = next;
			else
				*head_p = next;
			if (next == NULL)
				*tail_p = prev;

			FUNC2(item->name);
			FUNC2(item->value);
			FUNC2(item->filename);
			FUNC2(item);
		}
		else
			prev = item;
	}

	/* Done if we're trying to delete it */
	if (value == NULL)
		return;

	/* OK, append a new entry */
	item = FUNC1(sizeof *item);
	item->name = FUNC3(name);
	item->value = FUNC3(value);
	item->errmsg = NULL;
	item->filename = FUNC3("");	/* new item has no location */
	item->sourceline = 0;
	item->ignore = false;
	item->applied = false;
	item->next = NULL;

	if (*head_p == NULL)
		*head_p = item;
	else
		(*tail_p)->next = item;
	*tail_p = item;
}