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
typedef  int /*<<< orphan*/  RAND_POOL ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 size_t CRNGT_BUFSIZ ; 
 int FUNC0 (unsigned char*,size_t,unsigned char*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*) ; 

int FUNC7(OPENSSL_CTX *ctx,
                              RAND_POOL *pool,
                              unsigned char *buf,
                              unsigned char *md,
                              unsigned int *md_size)
{
    int r;
    size_t n;
    unsigned char *p;

    if (pool == NULL)
        return 0;

    n = FUNC4(pool);
    if (n >= CRNGT_BUFSIZ) {
        EVP_MD *fmd = FUNC1(ctx, "SHA256", "");
        if (fmd == NULL)
            return 0;
        p = FUNC5(pool);
        r = FUNC0(p, CRNGT_BUFSIZ, md, md_size, fmd, NULL);
        if (r != 0)
            FUNC3(buf, p, CRNGT_BUFSIZ);
        FUNC6(pool, p);
        FUNC2(fmd);
        return r;
    }
    return 0;
}