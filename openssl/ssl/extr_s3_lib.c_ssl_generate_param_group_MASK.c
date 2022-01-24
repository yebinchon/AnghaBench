#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  nid; } ;
typedef  TYPE_1__ TLS_GROUP_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int EVP_PKEY_DH ; 
 int EVP_PKEY_EC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TLS_GROUP_CURVE_CUSTOM ; 
 int TLS_GROUP_FFDHE ; 
 int TLS_GROUP_TYPE ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 

EVP_PKEY *FUNC10(uint16_t id)
{
    EVP_PKEY_CTX *pctx = NULL;
    EVP_PKEY *pkey = NULL;
    const TLS_GROUP_INFO *ginf = FUNC9(id);
    int pkey_ctx_id;

    if (ginf == NULL)
        goto err;

    if ((ginf->flags & TLS_GROUP_TYPE) == TLS_GROUP_CURVE_CUSTOM) {
        pkey = FUNC5();
        if (pkey != NULL && FUNC8(pkey, ginf->nid))
            return pkey;
        FUNC4(pkey);
        return NULL;
    }

    pkey_ctx_id = (ginf->flags & TLS_GROUP_FFDHE)
                        ? EVP_PKEY_DH : EVP_PKEY_EC;
    pctx = FUNC1(pkey_ctx_id, NULL);
    if (pctx == NULL)
        goto err;
    if (FUNC7(pctx) <= 0)
        goto err;
# ifndef OPENSSL_NO_DH
    if (ginf->flags & TLS_GROUP_FFDHE) {
        if (FUNC2(pctx, ginf->nid) <= 0)
            goto err;
    }
#  ifndef OPENSSL_NO_EC
    else
#  endif
# endif
# ifndef OPENSSL_NO_EC
    {
        if (FUNC3(pctx, ginf->nid) <= 0)
            goto err;
    }
# endif
    if (FUNC6(pctx, &pkey) <= 0) {
        FUNC4(pkey);
        pkey = NULL;
    }

 err:
    FUNC0(pctx);
    return pkey;
}