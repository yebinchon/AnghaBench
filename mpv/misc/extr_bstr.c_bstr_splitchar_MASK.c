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
struct bstr {int len; } ;

/* Variables and functions */
 struct bstr FUNC0 (struct bstr,int) ; 
 struct bstr FUNC1 (struct bstr,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bstr,char const) ; 

struct bstr FUNC3(struct bstr str, struct bstr *rest, const char c)
{
    int pos = FUNC2(str, c);
    if (pos < 0)
        pos = str.len;
    if (rest)
        *rest = FUNC0(str, pos + 1);
    return FUNC1(str, 0, pos + 1);
}