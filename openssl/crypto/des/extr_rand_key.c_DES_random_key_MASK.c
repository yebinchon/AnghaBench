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
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char*,int) ; 

int FUNC3(DES_cblock *ret)
{
    do {
        if (FUNC2((unsigned char *)ret, sizeof(DES_cblock)) != 1)
            return 0;
    } while (FUNC0(ret));
    FUNC1(ret);
    return 1;
}