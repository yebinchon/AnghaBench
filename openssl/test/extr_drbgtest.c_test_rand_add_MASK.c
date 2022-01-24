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
typedef  int /*<<< orphan*/  rand_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t,double) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int) ; 

__attribute__((used)) static int FUNC5(void)
{
    unsigned char rand_buf[256];
    size_t rand_buflen;

    FUNC4(rand_buf, 0xCD, sizeof(rand_buf));

    /* make sure it's instantiated */
    FUNC1(rand_buf, sizeof(rand_buf));
    if (!FUNC3(FUNC2()))
        return 0;

    for ( rand_buflen = 256 ; rand_buflen > 0 ; --rand_buflen ) {
        FUNC0(rand_buf, rand_buflen, 0.0);
        if (!FUNC3(FUNC2()))
            return 0;
    }

    return 1;
}