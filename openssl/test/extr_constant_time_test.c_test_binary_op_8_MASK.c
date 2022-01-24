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
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(unsigned
                            char (*op) (unsigned int a, unsigned int b),
                            const char *op_name, unsigned int a,
                            unsigned int b, int is_true)
{
    if (is_true && !FUNC0(op(a, b), CONSTTIME_TRUE_8))
        return 0;
    if (!is_true && !FUNC0(op(a, b), CONSTTIME_FALSE_8))
        return 0;
    return 1;
}