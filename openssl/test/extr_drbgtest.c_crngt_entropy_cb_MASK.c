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

/* Variables and functions */
 size_t CRNGT_BUFSIZ ; 
 int FUNC0 (unsigned char*,size_t,unsigned char*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t crngt_case ; 
 int /*<<< orphan*/  crngt_idx ; 
 int /*<<< orphan*/  crngt_num_cases ; 

__attribute__((used)) static int FUNC3(OPENSSL_CTX *ctx, RAND_POOL *pool,
                            unsigned char *buf, unsigned char *md,
                            unsigned int *md_size)
{
    size_t i, z;

    if (!FUNC2(crngt_idx, crngt_num_cases))
        return 0;
    /* Generate a block of unique data unless this is the duplication point */
    z = crngt_idx++;
    if (z > 0 && crngt_case == z)
        z--;
    for (i = 0; i < CRNGT_BUFSIZ; i++)
        buf[i] = (unsigned char)(i + 'A' + z);
    return FUNC0(buf, CRNGT_BUFSIZ, md, md_size, FUNC1(), NULL);
}