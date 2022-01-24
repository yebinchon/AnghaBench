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
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline int
FUNC1(int x, int y, int mod)
{
    int sum = x + y;
    FUNC0(0 <= x && x < mod && -mod <= y && y <= mod);
    if (sum >= mod)
    {
        sum -= mod;
    }
    if (sum < 0)
    {
        sum += mod;
    }
    return sum;
}