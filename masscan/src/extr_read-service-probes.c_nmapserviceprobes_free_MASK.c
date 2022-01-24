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
struct NmapServiceProbeList {struct NmapServiceProbeList* list; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct NmapServiceProbeList*) ; 
 int /*<<< orphan*/  FUNC1 (struct NmapServiceProbeList) ; 

void
FUNC2(struct NmapServiceProbeList *list)
{
    unsigned i;
    
    if (list == NULL)
        return;
    
    for (i=0; list->count; i++) {
        FUNC1(list->list[i]);
    }
    
    if (list->list)
        FUNC0(list->list);
    FUNC0(list);
}