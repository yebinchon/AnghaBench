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
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_I2D_ASN1_BIO_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int SMIME_STREAM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC7(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
                        const ASN1_ITEM *it)
{
    /* If streaming create stream BIO and copy all content through it */
    if (flags & SMIME_STREAM) {
        BIO *bio, *tbio;
        bio = FUNC4(out, val, it);
        if (!bio) {
            FUNC1(ASN1_F_I2D_ASN1_BIO_STREAM, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        FUNC6(in, bio, flags);
        (void)FUNC2(bio);
        /* Free up successive BIOs until we hit the old output BIO */
        do {
            tbio = FUNC5(bio);
            FUNC3(bio);
            bio = tbio;
        } while (bio != out);
    }
    /*
     * else just write out ASN1 structure which will have all content stored
     * internally
     */
    else
        FUNC0(it, out, val);
    return 1;
}