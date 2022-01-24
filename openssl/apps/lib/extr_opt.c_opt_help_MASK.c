#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  start ;
struct TYPE_5__ {scalar_t__ name; char valtype; } ;
typedef  TYPE_1__ OPTIONS ;

/* Variables and functions */
 int MAX_OPT_HELP_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OPT_HELP_STR ; 
 scalar_t__ OPT_MORE_STR ; 
 scalar_t__ OPT_SECTION_STR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prog ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 

void FUNC5(const OPTIONS *list)
{
    const OPTIONS *o;
    int i;
    int standard_prolog;
    int width = 5;
    char start[80 + 1];

    /* Starts with its own help message? */
    standard_prolog = list[0].name != OPT_HELP_STR;

    /* Find the widest help. */
    for (o = list; o->name; o++) {
        if (o->name == OPT_MORE_STR)
            continue;
        i = 2 + (int)FUNC3(o->name);
        if (o->valtype != '-')
            i += 1 + FUNC3(FUNC4(o));
        if (i < MAX_OPT_HELP_WIDTH && i > width)
            width = i;
        FUNC0(i < (int)sizeof(start));
    }

    if (standard_prolog) {
        FUNC2("Usage: %s [options]\n", prog);
        if (list[0].name != OPT_SECTION_STR)
            FUNC2("Valid options are:\n", prog);
    }

    /* Now let's print. */
    for (o = list; o->name; o++) {
        FUNC1(o, width);
    }
}