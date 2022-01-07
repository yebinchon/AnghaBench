
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {TYPE_1__* pmeth; TYPE_2__* data; } ;
struct TYPE_6__ {int * collected_info; int * collected_seed; int * kctx; } ;
struct TYPE_5__ {int pkey_id; } ;
typedef int OSSL_PARAM ;
typedef TYPE_2__ EVP_PKEY_KDF_CTX ;
typedef TYPE_3__ EVP_PKEY_CTX ;
typedef int EVP_MD ;
typedef int EVP_KDF_CTX ;
typedef int BUF_MEM ;


 int BUF_MEM_free (int *) ;
 int EVP_KDF_CTX_set_params (int *,int *) ;
 char* EVP_MD_name (int const*) ;
 int NID_tls1_prf ;
 int OPENSSL_assert (char*) ;
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
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_int (char const*,int*) ;
 int OSSL_PARAM_construct_octet_string (char const*,unsigned char*,size_t) ;
 int OSSL_PARAM_construct_uint64 (char const*,int *) ;
 int OSSL_PARAM_construct_utf8_string (char const*,char*,int ) ;
 int collect (int **,void*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int pkey_kdf_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    EVP_PKEY_KDF_CTX *pkctx = ctx->data;
    EVP_KDF_CTX *kctx = pkctx->kctx;
    enum { T_OCTET_STRING, T_UINT64, T_DIGEST, T_INT } cmd;
    const char *name, *mdname;
    BUF_MEM **collector = ((void*)0);
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    switch (type) {
    case 136:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_PASSWORD;
        break;
    case 137:
    case 131:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_SALT;
        break;
    case 130:
    case 139:
        cmd = T_DIGEST;
        name = OSSL_KDF_PARAM_DIGEST;
        break;
    case 129:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_SECRET;




        if (ctx->pmeth->pkey_id == NID_tls1_prf) {
            BUF_MEM_free(pkctx->collected_seed);
            pkctx->collected_seed = ((void*)0);
        }
        break;
    case 128:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_SEED;
        collector = &pkctx->collected_seed;
        break;
    case 140:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_KEY;
        break;
    case 141:
        cmd = T_OCTET_STRING;
        name = OSSL_KDF_PARAM_INFO;
        collector = &pkctx->collected_info;
        break;
    case 138:
        cmd = T_INT;
        name = OSSL_KDF_PARAM_MODE;
        break;
    case 134:
        cmd = T_UINT64;
        name = OSSL_KDF_PARAM_SCRYPT_N;
        break;
    case 132:
        cmd = T_UINT64;
        name = OSSL_KDF_PARAM_SCRYPT_R;
        break;
    case 133:
        cmd = T_UINT64;
        name = OSSL_KDF_PARAM_SCRYPT_P;
        break;
    case 135:
        cmd = T_UINT64;
        name = OSSL_KDF_PARAM_SCRYPT_MAXMEM;
        break;
    default:
        return -2;
    }

    if (collector != ((void*)0)) {
        switch (cmd) {
        case T_OCTET_STRING:
            return collect(collector, p2, p1);
        default:
            OPENSSL_assert("You shouldn't be here");
            break;
        }
        return 1;
    }

    switch (cmd) {
    case T_OCTET_STRING:
        params[0] =
            OSSL_PARAM_construct_octet_string(name, (unsigned char *)p2,
                                              (size_t)p1);
        break;

    case T_DIGEST:
        mdname = EVP_MD_name((const EVP_MD *)p2);
        params[0] = OSSL_PARAM_construct_utf8_string(name, (char *)mdname,
                                                     strlen(mdname) + 1);
        break;





    case T_INT:
        params[0] = OSSL_PARAM_construct_int(name, &p1);
        break;

    case T_UINT64:
        params[0] = OSSL_PARAM_construct_uint64(name, (uint64_t *)p2);
        break;
    }

    return EVP_KDF_CTX_set_params(kctx, params);
}
