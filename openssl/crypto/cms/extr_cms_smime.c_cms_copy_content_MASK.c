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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ BIO_TYPE_CIPHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  CMS_F_CMS_COPY_CONTENT ; 
 int /*<<< orphan*/  CMS_R_SMIME_TEXT_ERROR ; 
 unsigned int CMS_TEXT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC8(BIO *out, BIO *in, unsigned int flags)
{
    unsigned char buf[4096];
    int r = 0, i;
    BIO *tmpout;

    tmpout = FUNC7(out, flags);

    if (tmpout == NULL) {
        FUNC5(CMS_F_CMS_COPY_CONTENT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* Read all content through chain to process digest, decrypt etc */
    for (;;) {
        i = FUNC3(in, buf, sizeof(buf));
        if (i <= 0) {
            if (FUNC2(in) == BIO_TYPE_CIPHER) {
                if (!FUNC1(in))
                    goto err;
            }
            if (i < 0)
                goto err;
            break;
        }

        if (tmpout && (FUNC4(tmpout, buf, i) != i))
            goto err;
    }

    if (flags & CMS_TEXT) {
        if (!FUNC6(tmpout, out)) {
            FUNC5(CMS_F_CMS_COPY_CONTENT, CMS_R_SMIME_TEXT_ERROR);
            goto err;
        }
    }

    r = 1;

 err:
    if (tmpout != out)
        FUNC0(tmpout);
    return r;

}