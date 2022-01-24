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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char,int) ; 
 int /*<<< orphan*/  smbuf ; 

__attribute__((used)) static int FUNC9(void)
{
    unsigned char bytes[4];
    PACKET pkt;

    if (!FUNC7(FUNC0(&pkt, smbuf, BUF_LEN))
            || !FUNC7(FUNC1(&pkt, bytes, 4))
            || !FUNC4(bytes[0], 2)
            || !FUNC4(bytes[1], 4)
            || !FUNC4(bytes[2], 6)
            || !FUNC4(bytes[3], 8)
            || !FUNC6(FUNC3(&pkt), BUF_LEN - 4)
            || !FUNC7(FUNC2(&pkt, BUF_LEN - 8))
            || !FUNC7(FUNC1(&pkt, bytes, 4))
            || !FUNC8(bytes[0], 0xf8)
            || !FUNC8(bytes[1], 0xfa)
            || !FUNC8(bytes[2], 0xfc)
            || !FUNC8(bytes[3], 0xfe)
            || !FUNC5(FUNC3(&pkt)))
        return 0;

    return 1;
}