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
typedef  int /*<<< orphan*/  DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ cbc_data ; 
 scalar_t__ cbc_iv ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
    DES_LONG cs, lqret[4];

    cs = FUNC0(cbc_data, (DES_cblock *)lqret,
                        (long)FUNC2((char *)cbc_data), 2,
                        (DES_cblock *)cbc_iv);
    if (!FUNC1(cs, 0x70d7a63aL))
        return 0;
    if (!FUNC1(lqret[0], 0x327eba8dL))
        return 0;
    if (!FUNC1(lqret[1], 0x201a49ccL))
        return 0;
    if (!FUNC1(lqret[2], 0x70d7a63aL))
        return 0;
    if (!FUNC1(lqret[3], 0x501c2c26L))
        return 0;
    return 1;
}