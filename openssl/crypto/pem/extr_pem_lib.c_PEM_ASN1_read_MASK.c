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
typedef  int /*<<< orphan*/  pem_password_cb ;
typedef  int /*<<< orphan*/  d2i_of_void ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 void* FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  PEM_F_PEM_ASN1_READ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC6(d2i_of_void *d2i, const char *name, FILE *fp, void **x,
                    pem_password_cb *cb, void *u)
{
    BIO *b;
    void *ret;

    if ((b = FUNC1(FUNC2())) == NULL) {
        FUNC5(PEM_F_PEM_ASN1_READ, ERR_R_BUF_LIB);
        return 0;
    }
    FUNC3(b, fp, BIO_NOCLOSE);
    ret = FUNC4(d2i, name, b, x, cb, u);
    FUNC0(b);
    return ret;
}