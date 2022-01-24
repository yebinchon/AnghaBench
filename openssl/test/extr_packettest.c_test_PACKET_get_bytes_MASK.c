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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char const,int) ; 
 int /*<<< orphan*/  smbuf ; 

__attribute__((used)) static int FUNC8(void)
{
    const unsigned char *bytes = NULL;
    PACKET pkt;

    if (!FUNC6(FUNC0(&pkt, smbuf, BUF_LEN))
            || !FUNC6(FUNC2(&pkt, &bytes, 4))
            || !FUNC7(bytes[0], 2)
            || !FUNC7(bytes[1], 4)
            || !FUNC7(bytes[2], 6)
            || !FUNC7(bytes[3], 8)
            || !FUNC5(FUNC3(&pkt), BUF_LEN -4)
            || !FUNC6(FUNC1(&pkt, BUF_LEN - 8))
            || !FUNC6(FUNC2(&pkt, &bytes, 4))
            || !FUNC7(bytes[0], 0xf8)
            || !FUNC7(bytes[1], 0xfa)
            || !FUNC7(bytes[2], 0xfc)
            || !FUNC7(bytes[3], 0xfe)
            || !FUNC4(FUNC3(&pkt)))
        return 0;

    return 1;
}