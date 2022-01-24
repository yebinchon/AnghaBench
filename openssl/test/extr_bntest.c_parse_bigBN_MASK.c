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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(BIGNUM **out, const char *bn_strings[])
{
    char *bigstring = FUNC2(bn_strings, NULL);
    int ret = FUNC0(out, bigstring);

    FUNC1(bigstring);
    return ret;
}