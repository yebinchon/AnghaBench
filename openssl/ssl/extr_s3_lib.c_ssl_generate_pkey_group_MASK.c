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
typedef  int uint16_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  nid; } ;
typedef  TYPE_1__ TLS_GROUP_INFO ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  DH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_DH ; 
 int /*<<< orphan*/  EVP_PKEY_EC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL_GENERATE_PKEY_GROUP ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLS_GROUP_CURVE_CUSTOM ; 
 int TLS_GROUP_FFDHE ; 
 int TLS_GROUP_TYPE ; 
 TYPE_1__* FUNC12 (int) ; 

EVP_PKEY *FUNC13(SSL *s, uint16_t id)
{
    const TLS_GROUP_INFO *ginf = FUNC12(id);
    EVP_PKEY_CTX *pctx = NULL;
    EVP_PKEY *pkey = NULL;
    uint16_t gtype;
# ifndef OPENSSL_NO_DH
    DH *dh = NULL;
# endif

    if (ginf == NULL) {
        FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    gtype = ginf->flags & TLS_GROUP_TYPE;
# ifndef OPENSSL_NO_DH
    if (gtype == TLS_GROUP_FFDHE)
        pctx = FUNC3(EVP_PKEY_DH, NULL);
#  ifndef OPENSSL_NO_EC
    else
#  endif
# endif
# ifndef OPENSSL_NO_EC
    {
        if (gtype == TLS_GROUP_CURVE_CUSTOM)
            pctx = FUNC3(ginf->nid, NULL);
        else
            pctx = FUNC3(EVP_PKEY_EC, NULL);
    }
# endif
    if (pctx == NULL) {
        FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (FUNC9(pctx) <= 0) {
        FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_EVP_LIB);
        goto err;
    }
# ifndef OPENSSL_NO_DH
    if (gtype == TLS_GROUP_FFDHE) {
        if ((pkey = FUNC10()) == NULL
                || (dh = FUNC1(ginf->nid)) == NULL
                || !FUNC6(pkey, EVP_PKEY_DH, dh)) {
            FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                    ERR_R_EVP_LIB);
            FUNC0(dh);
            FUNC7(pkey);
            pkey = NULL;
            goto err;
        }
        if (FUNC4(pctx, ginf->nid) <= 0) {
            FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                    ERR_R_EVP_LIB);
            FUNC7(pkey);
            pkey = NULL;
            goto err;
        }
    }
#  ifndef OPENSSL_NO_EC
    else
#  endif
# endif
# ifndef OPENSSL_NO_EC
    {
        if (gtype != TLS_GROUP_CURVE_CUSTOM
                && FUNC5(pctx, ginf->nid) <= 0) {
            FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                     ERR_R_EVP_LIB);
            goto err;
        }
    }
# endif
    if (FUNC8(pctx, &pkey) <= 0) {
        FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL_GENERATE_PKEY_GROUP,
                 ERR_R_EVP_LIB);
        FUNC7(pkey);
        pkey = NULL;
    }

 err:
    FUNC2(pctx);
    return pkey;
}