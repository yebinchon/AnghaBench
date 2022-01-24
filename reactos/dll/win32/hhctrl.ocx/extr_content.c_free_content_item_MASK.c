#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  chm_index; int /*<<< orphan*/  chm_file; } ;
struct TYPE_5__ {TYPE_1__ merge; int /*<<< orphan*/  local; int /*<<< orphan*/  name; struct TYPE_5__* child; struct TYPE_5__* next; } ;
typedef  TYPE_2__ ContentItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(ContentItem *item)
{
    ContentItem *next;

    while(item) {
        next = item->next;

        FUNC1(item->child);

        FUNC0(item->name);
        FUNC0(item->local);
        FUNC0(item->merge.chm_file);
        FUNC0(item->merge.chm_index);

        item = next;
    }
}