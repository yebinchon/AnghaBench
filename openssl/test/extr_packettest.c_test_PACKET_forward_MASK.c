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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const,int) ; 
 int /*<<< orphan*/  smbuf ; 

__attribute__((used)) static int FUNC5(void)
{
    const unsigned char *byte = NULL;
    PACKET pkt;

    if (!FUNC3(FUNC0(&pkt, smbuf, BUF_LEN))
            || !FUNC3(FUNC1(&pkt, 1))
            || !FUNC3(FUNC2(&pkt, &byte, 1))
            || !FUNC4(byte[0], 4)
            || !FUNC3(FUNC1(&pkt, BUF_LEN - 3))
            || !FUNC3(FUNC2(&pkt, &byte, 1))
            || !FUNC4(byte[0], 0xfe))
        return 0;

    return 1;
}