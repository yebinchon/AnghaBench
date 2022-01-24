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
typedef  int /*<<< orphan*/  CGI_varlist ;
typedef  scalar_t__ CGI_value ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(CGI_varlist *vl) {
    const char *name;
    CGI_value  *value;
    int i;

    for (name = FUNC0(vl); name != 0;
        name = FUNC2(vl))
    {
        value = FUNC1(vl, 0);
        for (i = 0; value[i] != 0; i++) {
            FUNC3("%s [%d] >>%s<<\n", name, i, value[i]);
        }
    }
}