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
typedef  int /*<<< orphan*/  d2i_of_void ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_D2I_FP ; 
 void* FUNC0 (void* (*) (),int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 

void *FUNC6(void *(*xnew) (void), d2i_of_void *d2i, FILE *in, void **x)
{
    BIO *b;
    void *ret;

    if ((b = FUNC3(FUNC4())) == NULL) {
        FUNC1(ASN1_F_ASN1_D2I_FP, ERR_R_BUF_LIB);
        return NULL;
    }
    FUNC5(b, in, BIO_NOCLOSE);
    ret = FUNC0(xnew, d2i, b, x);
    FUNC2(b);
    return ret;
}