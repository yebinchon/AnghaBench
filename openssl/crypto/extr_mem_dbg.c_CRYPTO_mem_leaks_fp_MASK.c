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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_DISABLE ; 
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  print_bio ; 

int FUNC6(FILE *fp)
{
    BIO *b;
    int ret;

    /*
     * Need to turn off memory checking when allocated BIOs ... especially as
     * we're creating them at a time when we're trying to check we've not
     * left anything un-free()'d!!
     */
    FUNC4(CRYPTO_MEM_CHECK_DISABLE);
    b = FUNC1(FUNC2());
    FUNC4(CRYPTO_MEM_CHECK_ENABLE);
    if (b == NULL)
        return -1;
    FUNC3(b, fp, BIO_NOCLOSE);
    ret = FUNC5(print_bio, b);
    FUNC0(b);
    return ret;
}