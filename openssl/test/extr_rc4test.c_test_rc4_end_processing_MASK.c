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
typedef  int /*<<< orphan*/  obuf ;
typedef  int /*<<< orphan*/  RC4_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int const,int /*<<< orphan*/ ,int const) ; 
 int FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** data ; 
 int /*<<< orphan*/ ** keys ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * output ; 

__attribute__((used)) static int FUNC5(const int i)
{
    unsigned char obuf[512];
    RC4_KEY key;

    FUNC1(&key, keys[3][0], &(keys[3][1]));
    FUNC4(obuf, 0, sizeof(obuf));
    FUNC0(&key, i, &(data[3][0]), obuf);
    if (!FUNC2(obuf, i, output[3], i))
        return 0;
    return FUNC3(obuf[i], 0);
}