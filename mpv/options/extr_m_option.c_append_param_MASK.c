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

/* Variables and functions */
 int /*<<< orphan*/  NAMECH ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char*,scalar_t__,char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(char **res, char *param)
{
    if (FUNC1(param, NAMECH) == FUNC0(param)) {
        *res = FUNC3(*res, param);
    } else {
        // Simple escaping: %BYTECOUNT%STRING
        *res = FUNC2(*res, "%%%zd%%%s", FUNC0(param), param);
    }
}