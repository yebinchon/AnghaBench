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
struct TYPE_8__ {char* id; TYPE_1__* variables; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int options; struct TYPE_7__* value; struct TYPE_7__* variable; struct TYPE_7__* next; int /*<<< orphan*/  key_fullname; TYPE_2__* rrdset; } ;
typedef  TYPE_1__ RRDSETVAR ;
typedef  TYPE_2__ RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  D_VARIABLES ; 
 int RRDVAR_OPTION_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(RRDSETVAR *rs) {
    RRDSET *st = rs->rrdset;
    FUNC0(D_VARIABLES, "RRDSETVAR free for chart id '%s' name '%s', variable '%s'", st->id, st->name, rs->variable);

    if(st->variables == rs) {
        st->variables = rs->next;
    }
    else {
        RRDSETVAR *t;
        for (t = st->variables; t && t->next != rs; t = t->next);
        if(!t) FUNC1("RRDSETVAR '%s' not found in chart '%s' variables linked list", rs->key_fullname, st->id);
        else t->next = rs->next;
    }

    FUNC3(rs);

    FUNC2(rs->variable);

    if(rs->options & RRDVAR_OPTION_ALLOCATED)
        FUNC2(rs->value);

    FUNC2(rs);
}