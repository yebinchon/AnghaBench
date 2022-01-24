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
struct bstr {int len; int /*<<< orphan*/ * start; } ;

/* Variables and functions */
 struct bstr FUNC0 (struct bstr,int) ; 
 struct bstr FUNC1 (struct bstr,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bstr,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 

struct bstr FUNC4(struct bstr str, const char *sep, struct bstr *rest)
{
    int start;
    for (start = 0; start < str.len; start++)
        if (!FUNC3(sep, str.start[start]))
            break;
    str = FUNC0(str, start);
    int end = FUNC2(str, sep);
    if (rest) {
        *rest = FUNC0(str, end);
    }
    return FUNC1(str, 0, end);
}