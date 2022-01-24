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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(void)
{
    char buf1[10], buf2[10];
    char *data = NULL;
    PACKET pkt;
    int result = 0;

    FUNC7(buf1, 'x', 10);
    FUNC7(buf2, 'y', 10);
    buf2[5] = '\0';

    if (!FUNC6(FUNC1(&pkt, (unsigned char*)buf1, 10))
            || !FUNC6(FUNC2(&pkt, &data))
            || !FUNC3(FUNC8(data), 10)
            || !FUNC5(data, buf1, 10)
            || !FUNC6(FUNC1(&pkt, (unsigned char*)buf2, 10))
            || !FUNC6(FUNC2(&pkt, &data))
            || !FUNC3(FUNC8(data), 5)
            || !FUNC4(data, buf2))
        goto end;

    result = 1;
end:
    FUNC0(data);
    return result;
}