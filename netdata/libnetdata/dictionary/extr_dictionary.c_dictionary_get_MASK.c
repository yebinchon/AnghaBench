#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* value; } ;
typedef  TYPE_1__ NAME_VALUE ;
typedef  int /*<<< orphan*/  DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  D_DICTIONARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

void *FUNC5(DICTIONARY *dict, const char *name) {
    FUNC0(D_DICTIONARY, "GET dictionary entry with name '%s'.", name);

    FUNC2(dict);
    NAME_VALUE *nv = FUNC1(dict, name, 0);
    FUNC3(dict);

    if(FUNC4(!nv)) {
        FUNC0(D_DICTIONARY, "Not found dictionary entry with name '%s'.", name);
        return NULL;
    }

    FUNC0(D_DICTIONARY, "Found dictionary entry with name '%s'.", name);
    return nv->value;
}