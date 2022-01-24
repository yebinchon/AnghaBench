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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smbuf ; 

__attribute__((used)) static int FUNC7(void)
{
    unsigned char tmp[BUF_LEN];
    PACKET pkt;
    size_t len;

    if (!FUNC6(FUNC0(&pkt, smbuf, BUF_LEN))
            || !FUNC6(FUNC1(&pkt, tmp, BUF_LEN, &len))
            || !FUNC5(len, BUF_LEN)
            || !FUNC4(smbuf, BUF_LEN, tmp, BUF_LEN)
            || !FUNC5(FUNC2(&pkt), BUF_LEN)
            || !FUNC3(FUNC1(&pkt, tmp, BUF_LEN - 1, &len)))
        return 0;

    return 1;
}