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
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 scalar_t__ BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 
 int /*<<< orphan*/  smbuf ; 

__attribute__((used)) static int FUNC6(void)
{
    unsigned long i = 0;
    PACKET pkt;

    if (!FUNC4(FUNC0(&pkt, smbuf, BUF_LEN))
            || !FUNC4(FUNC2(&pkt, &i))
            || !FUNC5(i, 0x020406UL)
            || !FUNC4(FUNC1(&pkt, BUF_LEN - 6))
            || !FUNC4(FUNC2(&pkt, &i))
            || !FUNC5(i, 0xfafcfeUL)
            || !FUNC3(FUNC2(&pkt, &i)))
        return 0;

    return 1;
}