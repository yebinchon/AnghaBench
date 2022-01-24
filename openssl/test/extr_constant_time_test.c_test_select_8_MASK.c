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
 int /*<<< orphan*/  CONSTTIME_FALSE_8 ; 
 int /*<<< orphan*/  CONSTTIME_TRUE_8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC2(unsigned char a, unsigned char b)
{
    if (!FUNC0(FUNC1(CONSTTIME_TRUE_8, a, b), a))
        return 0;
    if (!FUNC0(FUNC1(CONSTTIME_FALSE_8, a, b), b))
        return 0;
    return 1;
}