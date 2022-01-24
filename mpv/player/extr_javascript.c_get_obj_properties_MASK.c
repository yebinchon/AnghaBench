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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char**,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 char** FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char const*) ; 

__attribute__((used)) static int FUNC6(void *ta_ctx, char ***keys, js_State *J, int idx)
{
    int length = 0;
    FUNC3(J, idx, 1);

    *keys = FUNC4(ta_ctx);
    const char *name;
    while ((name = FUNC1(J, -1)))
        FUNC0(ta_ctx, *keys, length, FUNC5(ta_ctx, name));

    FUNC2(J, 1);  // the iterator
    return length;
}