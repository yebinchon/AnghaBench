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
 struct bstr FUNC0 (struct bstr) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

struct bstr FUNC2(struct bstr str)
{
    str = FUNC0(str);
    while (str.len && FUNC1(str.start[str.len - 1]))
        str.len--;
    return str;
}