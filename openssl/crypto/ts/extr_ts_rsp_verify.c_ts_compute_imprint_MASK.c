#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_9__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
struct TYPE_11__ {TYPE_1__* hash_algo; } ;
struct TYPE_10__ {TYPE_3__* msg_imprint; } ;
typedef  TYPE_2__ TS_TST_INFO ;
typedef  TYPE_3__ TS_MSG_IMPRINT ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 unsigned char* FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  TS_F_TS_COMPUTE_IMPRINT ; 
 int /*<<< orphan*/  TS_R_UNSUPPORTED_MD_ALGORITHM ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(BIO *data, TS_TST_INFO *tst_info,
                              X509_ALGOR **md_alg,
                              unsigned char **imprint, unsigned *imprint_len)
{
    TS_MSG_IMPRINT *msg_imprint = tst_info->msg_imprint;
    X509_ALGOR *md_alg_resp = msg_imprint->hash_algo;
    const EVP_MD *md;
    EVP_MD_CTX *md_ctx = NULL;
    unsigned char buffer[4096];
    int length;

    *md_alg = NULL;
    *imprint = NULL;

    if ((*md_alg = FUNC11(md_alg_resp)) == NULL)
        goto err;
    if ((md = FUNC7((*md_alg)->algorithm)) == NULL) {
        FUNC10(TS_F_TS_COMPUTE_IMPRINT, TS_R_UNSUPPORTED_MD_ALGORITHM);
        goto err;
    }
    length = FUNC6(md);
    if (length < 0)
        goto err;
    *imprint_len = length;
    if ((*imprint = FUNC9(*imprint_len)) == NULL) {
        FUNC10(TS_F_TS_COMPUTE_IMPRINT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    md_ctx = FUNC5();
    if (md_ctx == NULL) {
        FUNC10(TS_F_TS_COMPUTE_IMPRINT, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (!FUNC2(md_ctx, md))
        goto err;
    while ((length = FUNC0(data, buffer, sizeof(buffer))) > 0) {
        if (!FUNC3(md_ctx, buffer, length))
            goto err;
    }
    if (!FUNC1(md_ctx, *imprint, NULL))
        goto err;
    FUNC4(md_ctx);

    return 1;
 err:
    FUNC4(md_ctx);
    FUNC12(*md_alg);
    FUNC8(*imprint);
    *imprint_len = 0;
    *imprint = 0;
    return 0;
}