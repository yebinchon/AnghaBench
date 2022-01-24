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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC0 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PEM_F_PEM_SIGNFINAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(EVP_MD_CTX *ctx, unsigned char *sigret,
                  unsigned int *siglen, EVP_PKEY *pkey)
{
    unsigned char *m;
    int i, ret = 0;
    unsigned int m_len;

    m = FUNC4(FUNC1(pkey));
    if (m == NULL) {
        FUNC5(PEM_F_PEM_SIGNFINAL, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC2(ctx, m, &m_len, pkey) <= 0)
        goto err;

    i = FUNC0(sigret, m, m_len);
    *siglen = i;
    ret = 1;
 err:
    /* ctx has been zeroed by EVP_SignFinal() */
    FUNC3(m);
    return ret;
}