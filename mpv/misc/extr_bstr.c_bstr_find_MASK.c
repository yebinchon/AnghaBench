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
 int /*<<< orphan*/  FUNC0 (struct bstr,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct bstr) ; 

int FUNC2(struct bstr haystack, struct bstr needle)
{
    for (int i = 0; i < haystack.len; i++)
        if (FUNC1(FUNC0(haystack, i, haystack.len), needle))
            return i;
    return -1;
}