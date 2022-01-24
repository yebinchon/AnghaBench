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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC8(WCHAR *reg_key_name)
{
    WCHAR *key_name = NULL;
    HKEY key_class;

    if (!reg_key_name || !reg_key_name[0])
        return;

    if (!FUNC7(reg_key_name, &key_class, &key_name)) {
        char* reg_key_nameA = FUNC0(reg_key_name);
        FUNC5(stderr,"%d: Incorrect registry class specification in '%s'\n",
                FUNC6(), reg_key_nameA);
        FUNC2(FUNC1(), 0, reg_key_nameA);
        FUNC4(1);
    }
    if (!*key_name) {
        char* reg_key_nameA = FUNC0(reg_key_name);
        FUNC5(stderr,"%d: Can't delete registry class '%s'\n",
                FUNC6(), reg_key_nameA);
        FUNC2(FUNC1(), 0, reg_key_nameA);
        FUNC4(1);
    }

    FUNC3(key_class, key_name);
}