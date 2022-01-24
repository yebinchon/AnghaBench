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
typedef  int /*<<< orphan*/  NAME_VALUE ;
typedef  int /*<<< orphan*/  DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  D_DICTIONARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(DICTIONARY *dict, const char *name) {
    int ret;

    FUNC0(D_DICTIONARY, "DEL dictionary entry with name '%s'.", name);

    FUNC4(dict);

    NAME_VALUE *nv = FUNC2(dict, name, 0);
    if(FUNC5(!nv)) {
        FUNC0(D_DICTIONARY, "Not found dictionary entry with name '%s'.", name);
        ret = -1;
    }
    else {
        FUNC0(D_DICTIONARY, "Found dictionary entry with name '%s'.", name);
        FUNC1(dict, nv);
        ret = 0;
    }

    FUNC3(dict);

    return ret;
}