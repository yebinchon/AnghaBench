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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 

__attribute__((used)) static int FUNC5(void)
{
    char buf1[10], buf2[10];
    PACKET pkt;

    FUNC4(buf1, 'x', 10);
    FUNC4(buf2, 'y', 10);
    buf2[5] = '\0';

    if (!FUNC3(FUNC0(&pkt, (unsigned char*)buf1, 10))
            || !FUNC2(FUNC1(&pkt))
            || !FUNC3(FUNC0(&pkt, (unsigned char*)buf2, 10))
            || !FUNC3(FUNC1(&pkt)))
        return 0;

    return 1;
}