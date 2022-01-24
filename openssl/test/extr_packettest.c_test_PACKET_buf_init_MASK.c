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
 int BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
    unsigned char buf1[BUF_LEN];
    PACKET pkt;

    /* Also tests PACKET_remaining() */
    if (!FUNC4(FUNC0(&pkt, buf1, 4))
            || !FUNC3(FUNC1(&pkt), 4)
            || !FUNC4(FUNC0(&pkt, buf1, BUF_LEN))
            || !FUNC3(FUNC1(&pkt), BUF_LEN)
            || !FUNC2(FUNC0(&pkt, buf1, -1)))
        return 0;

    return 1;
}