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
typedef  int /*<<< orphan*/  RC2_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  RC2_DECRYPT ; 
 int /*<<< orphan*/  RC2_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned char** RC2cipher ; 
 int /*<<< orphan*/ ** RC2key ; 
 unsigned char** RC2plain ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC3(const int n)
{
    int testresult = 1;
    RC2_KEY key;
    unsigned char buf[8], buf2[8];

    FUNC1(&key, 16, &(RC2key[n][0]), 0 /* or 1024 */ );

    FUNC0(&RC2plain[n][0], buf, &key, RC2_ENCRYPT);
    if (!FUNC2(&RC2cipher[n][0], 8, buf, 8))
        testresult = 0;

    FUNC0(buf, buf2, &key, RC2_DECRYPT);
    if (!FUNC2(&RC2plain[n][0], 8, buf2, 8))
        testresult = 0;

    return testresult;
}