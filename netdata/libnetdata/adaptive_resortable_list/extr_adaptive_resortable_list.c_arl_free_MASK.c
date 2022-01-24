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
struct TYPE_6__ {struct TYPE_6__* name; struct TYPE_6__* next; struct TYPE_6__* head; } ;
typedef  TYPE_1__ ARL_ENTRY ;
typedef  TYPE_1__ ARL_BASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(ARL_BASE *arl_base) {
    if(FUNC2(!arl_base))
        return;

    while(arl_base->head) {
        ARL_ENTRY *e = arl_base->head;
        arl_base->head = e->next;

        FUNC0(e->name);
#ifdef NETDATA_INTERNAL_CHECKS
        memset(e, 0, sizeof(ARL_ENTRY));
#endif
        FUNC0(e);
    }

    FUNC0(arl_base->name);

#ifdef NETDATA_INTERNAL_CHECKS
    memset(arl_base, 0, sizeof(ARL_BASE));
#endif

    FUNC0(arl_base);
}