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
typedef  int /*<<< orphan*/  subpkt ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void)
{
    unsigned char buf1[BUF_LEN];
    const size_t len = 16;
    unsigned int i;
    PACKET pkt, exact_pkt, subpkt;

    FUNC6(&subpkt, 0, sizeof(subpkt));
    buf1[0] = (unsigned char)len;
    for (i = 1; i < BUF_LEN; i++)
        buf1[i] = (i * 2) & 0xff;

    if (!FUNC5(FUNC1(&pkt, buf1, BUF_LEN))
            || !FUNC5(FUNC1(&exact_pkt, buf1, len + 1))
            || !FUNC3(FUNC0(&pkt, &subpkt))
            || !FUNC4(FUNC2(&pkt), BUF_LEN)
            || !FUNC5(FUNC0(&exact_pkt, &subpkt))
            || !FUNC4(FUNC2(&exact_pkt), 0)
            || !FUNC4(FUNC2(&subpkt), len))
        return 0;

    return 1;
}