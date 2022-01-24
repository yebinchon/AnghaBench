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
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  int /*<<< orphan*/  DES_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cbc_cksum_data ; 
 int /*<<< orphan*/  cbc_cksum_ret ; 
 scalar_t__ cbc_data ; 
 int /*<<< orphan*/  cbc_iv ; 
 int /*<<< orphan*/  cbc_key ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(void)
{
    DES_LONG cs;
    DES_key_schedule ks;
    unsigned char cret[8];

    FUNC1(&cbc_key, &ks);
    cs = FUNC0(cbc_data, &cret, FUNC4((char *)cbc_data), &ks,
                       &cbc_iv);
    if (!FUNC2(cs, cbc_cksum_ret))
        return 0;
    return FUNC3(cret, 8, cbc_cksum_data, 8);
}