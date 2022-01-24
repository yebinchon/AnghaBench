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
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  CMS_F_CMS_ENCRYPTEDDATA_DECRYPT ; 
 int /*<<< orphan*/  CMS_R_TYPE_NOT_ENCRYPTED_DATA ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NID_pkcs7_encrypted ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(CMS_ContentInfo *cms,
                              const unsigned char *key, size_t keylen,
                              BIO *dcont, BIO *out, unsigned int flags)
{
    BIO *cont;
    int r;
    if (FUNC4(FUNC2(cms)) != NID_pkcs7_encrypted) {
        FUNC3(CMS_F_CMS_ENCRYPTEDDATA_DECRYPT,
               CMS_R_TYPE_NOT_ENCRYPTED_DATA);
        return 0;
    }

    if (!dcont && !FUNC5(cms))
        return 0;

    if (FUNC0(cms, NULL, key, keylen) <= 0)
        return 0;
    cont = FUNC1(cms, dcont);
    if (!cont)
        return 0;
    r = FUNC6(out, cont, flags);
    FUNC7(cont, dcont);
    return r;
}