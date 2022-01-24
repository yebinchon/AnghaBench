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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  X509_F_X509_PRINT_EX_FP ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(FILE *fp, X509 *x, unsigned long nmflag,
                     unsigned long cflag)
{
    BIO *b;
    int ret;

    if ((b = FUNC1(FUNC2())) == NULL) {
        FUNC5(X509_F_X509_PRINT_EX_FP, ERR_R_BUF_LIB);
        return 0;
    }
    FUNC3(b, fp, BIO_NOCLOSE);
    ret = FUNC4(b, x, nmflag, cflag);
    FUNC0(b);
    return ret;
}