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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ smbuf ; 

__attribute__((used)) static int FUNC4(void)
{
    PACKET pkt;

    if (!FUNC3(FUNC0(&pkt, smbuf, 4))
            || !FUNC3(FUNC1(&pkt, smbuf, 4))
            || !FUNC2(FUNC1(&pkt, smbuf + 1, 4))
            || !FUNC3(FUNC0(&pkt, smbuf, BUF_LEN))
            || !FUNC3(FUNC1(&pkt, smbuf, BUF_LEN))
            || !FUNC2(FUNC1(&pkt, smbuf, BUF_LEN - 1))
            || !FUNC2(FUNC1(&pkt, smbuf, BUF_LEN + 1))
            || !FUNC2(FUNC1(&pkt, smbuf, 0)))
        return 0;

    return 1;
}