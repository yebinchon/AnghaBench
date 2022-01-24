#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; struct TYPE_7__* next; } ;
struct TYPE_6__ {char* hostname; TYPE_2__* templates; } ;
typedef  TYPE_1__ RRDHOST ;
typedef  TYPE_2__ RRDCALCTEMPLATE ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 

inline void FUNC4(RRDHOST *host, RRDCALCTEMPLATE *rt) {
    if(FUNC3(!rt)) return;

    FUNC0(D_HEALTH, "Health removing template '%s' of host '%s'", rt->name, host->hostname);

    if(host->templates == rt) {
        host->templates = rt->next;
    }
    else {
        RRDCALCTEMPLATE *t;
        for (t = host->templates; t && t->next != rt; t = t->next ) ;
        if(t) {
            t->next = rt->next;
            rt->next = NULL;
        }
        else
            FUNC1("Cannot find RRDCALCTEMPLATE '%s' linked in host '%s'", rt->name, host->hostname);
    }

    FUNC2(rt);
}