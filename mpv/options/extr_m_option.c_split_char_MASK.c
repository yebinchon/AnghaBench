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
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC3(bstr str, unsigned char split, int max, bstr *out_arr)
{
    if (max < 1)
        return 0;

    int count = 0;
    while (1) {
        int next = FUNC2(str, split);
        if (next >= 0 && max - count > 1) {
            out_arr[count++] = FUNC1(str, 0, next);
            str = FUNC0(str, next + 1);
        } else {
            out_arr[count++] = str;
            break;
        }
    }
    return count;
}