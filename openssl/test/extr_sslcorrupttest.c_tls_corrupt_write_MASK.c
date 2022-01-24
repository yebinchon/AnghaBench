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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ docorrupt ; 

__attribute__((used)) static int FUNC6(BIO *bio, const char *in, int inl)
{
    int ret;
    BIO *next = FUNC0(bio);
    char *copy;

    if (docorrupt) {
        if (!FUNC4(copy = FUNC3(in, inl)))
            return 0;
        /* corrupt last bit of application data */
        copy[inl-1] ^= 1;
        ret = FUNC1(next, copy, inl);
        FUNC2(copy);
    } else {
        ret = FUNC1(next, in, inl);
    }
    FUNC5(bio);

    return ret;
}