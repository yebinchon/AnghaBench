#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {TYPE_1__* pmeth; TYPE_2__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * collected_info; int /*<<< orphan*/ * collected_seed; int /*<<< orphan*/ * kctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkey_id; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_2__ EVP_PKEY_KDF_CTX ;
typedef  TYPE_3__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  BUF_MEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
#define  EVP_PKEY_CTRL_HKDF_INFO 141 
#define  EVP_PKEY_CTRL_HKDF_KEY 140 
#define  EVP_PKEY_CTRL_HKDF_MD 139 
#define  EVP_PKEY_CTRL_HKDF_MODE 138 
#define  EVP_PKEY_CTRL_HKDF_SALT 137 
#define  EVP_PKEY_CTRL_PASS 136 
#define  EVP_PKEY_CTRL_SCRYPT_MAXMEM_BYTES 135 
#define  EVP_PKEY_CTRL_SCRYPT_N 134 
#define  EVP_PKEY_CTRL_SCRYPT_P 133 
#define  EVP_PKEY_CTRL_SCRYPT_R 132 
#define  EVP_PKEY_CTRL_SCRYPT_SALT 131 
#define  EVP_PKEY_CTRL_TLS_MD 130 
#define  EVP_PKEY_CTRL_TLS_SECRET 129 
#define  EVP_PKEY_CTRL_TLS_SEED 128 
 int /*<<< orphan*/  NID_tls1_prf ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* OSSL_KDF_PARAM_DIGEST ; 
 char* OSSL_KDF_PARAM_INFO ; 
 char* OSSL_KDF_PARAM_KEY ; 
 char* OSSL_KDF_PARAM_MODE ; 
 char* OSSL_KDF_PARAM_PASSWORD ; 
 char* OSSL_KDF_PARAM_SALT ; 
 char* OSSL_KDF_PARAM_SCRYPT_MAXMEM ; 
 char* OSSL_KDF_PARAM_SCRYPT_N ; 
 char* OSSL_KDF_PARAM_SCRYPT_P ; 
 char* OSSL_KDF_PARAM_SCRYPT_R ; 
 char* OSSL_KDF_PARAM_SECRET ; 
 char* OSSL_KDF_PARAM_SEED ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC4 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ **,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    EVP_PKEY_KDF_CTX *pkctx = ctx->data;
    EVP_KDF_CTX *kctx = pkctx->kctx;
    enum { T_OCTET_STRING, T_UINT64, T_DIGEST, T_INT } cmd;
    const char *name, *mdname;
    BUF_MEM **collector = NULL;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    switch (type) {
    case EVP_PKEY_CTRL_PASS:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_PASSWORD;
        break;
    case EVP_PKEY_CTRL_HKDF_SALT:
    case EVP_PKEY_CTRL_SCRYPT_SALT:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_SALT;
        break;
    case EVP_PKEY_CTRL_TLS_MD:
    case EVP_PKEY_CTRL_HKDF_MD:
        cmd = T_DIGEST;
        name = OSSL_KDF_PARAM_DIGEST;
        break;
    case EVP_PKEY_CTRL_TLS_SECRET:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_SECRET;
        /*
         * Perform the semantics described in
         * EVP_PKEY_CTX_add1_tls1_prf_seed(3)
         */
        if (ctx->pmeth->pkey_id == NID_tls1_prf) {
            FUNC0(pkctx->collected_seed);
            pkctx->collected_seed = NULL;
        }
        break;
    case EVP_PKEY_CTRL_TLS_SEED:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_SEED;
        collector = &pkctx->collected_seed;
        break;
    case EVP_PKEY_CTRL_HKDF_KEY:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_KEY;
        break;
    case EVP_PKEY_CTRL_HKDF_INFO:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_INFO;
        collector = &pkctx->collected_info;
        break;
    case EVP_PKEY_CTRL_HKDF_MODE:
        cmd = T_INT;
        name = OSSL_KDF_PARAM_MODE;
        break;
    case EVP_PKEY_CTRL_SCRYPT_N:
        cmd = T_UINT64;
        name = OSSL_KDF_PARAM_SCRYPT_N;
        break;
    case EVP_PKEY_CTRL_SCRYPT_R:
        cmd = T_UINT64; /* Range checking occurs on the provider side */
        name = OSSL_KDF_PARAM_SCRYPT_R;
        break;
    case EVP_PKEY_CTRL_SCRYPT_P:
        cmd = T_UINT64; /* Range checking occurs on the provider side */
        name = OSSL_KDF_PARAM_SCRYPT_P;
        break;
    case EVP_PKEY_CTRL_SCRYPT_MAXMEM_BYTES:
        cmd = T_UINT64;
        name = OSSL_KDF_PARAM_SCRYPT_MAXMEM;
        break;
    default:
        return -2;
    }

    if (collector != NULL) {
        switch (cmd) {
        case T_OCTET_STRING:
            return FUNC8(collector, p2, p1);
        default:
            FUNC3("You shouldn't be here");
            break;
        }
        return 1;
    }

    switch (cmd) {
    case T_OCTET_STRING:
        params[0] =
            FUNC5(name, (unsigned char *)p2,
                                              (size_t)p1);
        break;

    case T_DIGEST:
        mdname = FUNC2((const EVP_MD *)p2);
        params[0] = FUNC7(name, (char *)mdname,
                                                     FUNC9(mdname) + 1);
        break;

        /*
         * These are special because the helper macros pass a pointer to the
         * stack, so a local copy is required.
         */
    case T_INT:
        params[0] = FUNC4(name, &p1);
        break;

    case T_UINT64:
        params[0] = FUNC6(name, (uint64_t *)p2);
        break;
    }

    return FUNC1(kctx, params);
}