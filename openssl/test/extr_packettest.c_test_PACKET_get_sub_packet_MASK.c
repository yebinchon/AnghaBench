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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int) ; 
 int /*<<< orphan*/  smbuf ; 

__attribute__((used)) static int FUNC9(void)
{
    PACKET pkt, subpkt;
    unsigned long i = 0;

    if (!FUNC7(FUNC0(&pkt, smbuf, BUF_LEN))
            || !FUNC7(FUNC3(&pkt, &subpkt, 4))
            || !FUNC7(FUNC2(&subpkt, &i))
            || !FUNC8(i, 0x02040608UL)
            || !FUNC6(FUNC4(&subpkt), 0)
            || !FUNC7(FUNC1(&pkt, BUF_LEN - 8))
            || !FUNC7(FUNC3(&pkt, &subpkt, 4))
            || !FUNC7(FUNC2(&subpkt, &i))
            || !FUNC8(i, 0xf8fafcfeUL)
            || !FUNC6(FUNC4(&subpkt), 0)
            || !FUNC5(FUNC3(&pkt, &subpkt, 4)))
        return 0;

    return 1;
}