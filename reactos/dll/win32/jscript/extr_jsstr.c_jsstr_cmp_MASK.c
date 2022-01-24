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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(jsstr_t *str1, jsstr_t *str2)
{
    unsigned len1 = FUNC2(str1);
    unsigned len2 = FUNC2(str2);
    const WCHAR *str;
    int ret;

    str = FUNC3(str2);
    if(str) {
        ret = FUNC1(str1, str, FUNC4(len1, len2));
        return ret || len1 == len2 ? ret : -1;
    }

    str = FUNC3(str1);
    if(str) {
        ret = FUNC1(str2, str, FUNC4(len1, len2));
        return ret || len1 == len2 ? -ret : 1;
    }

    return FUNC5(FUNC0(str1), FUNC0(str2));
}