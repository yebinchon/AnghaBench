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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char**,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smbuf ; 

__attribute__((used)) static int FUNC8(void)
{
    unsigned char *data = NULL;
    size_t len;
    PACKET pkt;
    int result = 0;

    if (!FUNC7(FUNC1(&pkt, smbuf, BUF_LEN))
            || !FUNC7(FUNC4(&pkt, &data, &len))
            || !FUNC6(len, BUF_LEN)
            || !FUNC5(data, len, FUNC2(&pkt), len)
            || !FUNC7(FUNC3(&pkt, 10))
            || !FUNC7(FUNC4(&pkt, &data, &len))
            || !FUNC6(len, BUF_LEN - 10)
            || !FUNC5(data, len, FUNC2(&pkt), len))
        goto end;
    result = 1;
end:
    FUNC0(data);
    return result;
}