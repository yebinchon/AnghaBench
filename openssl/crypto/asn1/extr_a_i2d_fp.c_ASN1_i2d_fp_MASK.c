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
typedef  int /*<<< orphan*/  i2d_of_void ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_I2D_FP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 

int FUNC6(i2d_of_void *i2d, FILE *out, const void *x)
{
    BIO *b;
    int ret;

    if ((b = FUNC3(FUNC4())) == NULL) {
        FUNC1(ASN1_F_ASN1_I2D_FP, ERR_R_BUF_LIB);
        return 0;
    }
    FUNC5(b, out, BIO_NOCLOSE);
    ret = FUNC0(i2d, b, x);
    FUNC2(b);
    return ret;
}