
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int req_info; TYPE_5__* sm2_id; TYPE_6__* signature; } ;
typedef TYPE_2__ X509_REQ ;
struct TYPE_16__ {scalar_t__ type; int flags; scalar_t__ length; int data; } ;
struct TYPE_13__ {int cert_info; TYPE_5__* sm2_id; TYPE_6__ signature; } ;
typedef TYPE_3__ X509 ;
struct TYPE_15__ {int length; int data; } ;
struct TYPE_14__ {TYPE_1__* ameth; } ;
struct TYPE_11__ {scalar_t__ pkey_id; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int ASN1_VALUE ;
typedef TYPE_5__ ASN1_OCTET_STRING ;
typedef TYPE_6__ ASN1_BIT_STRING ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_R_INVALID_BIT_STRING_BITS_LEFT ;
 int ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM ;
 int ASN1_R_WRONG_PUBLIC_KEY_TYPE ;
 int ASN1_item_i2d (int *,unsigned char**,int ) ;
 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int EVP_DigestVerify (int *,int ,size_t,unsigned char*,int) ;
 int EVP_DigestVerifyInit (int *,int *,int const*,int *,TYPE_4__*) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_set_pkey_ctx (int *,int *) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (TYPE_4__*,int *) ;
 int EVP_PKEY_CTX_set1_id (int *,int ,int ) ;
 int EVP_PKEY_SM2 ;
 int EVP_PKEY_set_alias_type (TYPE_4__*,int ) ;
 scalar_t__ EVP_PKEY_type (int) ;
 int * EVP_get_digestbynid (int) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 scalar_t__ V_ASN1_BIT_STRING ;
 int X509_CINF ;
 int X509_F_COMMON_VERIFY_SM2 ;
 int X509_REQ_INFO ;
 int X509err (int ,int ) ;

__attribute__((used)) static int common_verify_sm2(void *data, EVP_PKEY *pkey,
                             int mdnid, int pknid, int req)
{
    X509 *x = ((void*)0);
    X509_REQ *r = ((void*)0);
    EVP_MD_CTX *ctx = ((void*)0);
    unsigned char *buf_in = ((void*)0);
    int ret = -1, inl = 0;
    size_t inll = 0;
    EVP_PKEY_CTX *pctx = ((void*)0);
    const EVP_MD *type = EVP_get_digestbynid(mdnid);
    ASN1_BIT_STRING *signature = ((void*)0);
    ASN1_OCTET_STRING *sm2_id = ((void*)0);
    ASN1_VALUE *tbv = ((void*)0);

    if (type == ((void*)0)) {
        X509err(X509_F_COMMON_VERIFY_SM2,
                ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM);
        goto err;
    }

    if (pkey == ((void*)0)) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_PASSED_NULL_PARAMETER);
        return -1;
    }

    if (req == 1) {
        r = (X509_REQ *)data;
        signature = r->signature;
        sm2_id = r->sm2_id;
        tbv = (ASN1_VALUE *)&r->req_info;
    } else {
        x = (X509 *)data;
        signature = &x->signature;
        sm2_id = x->sm2_id;
        tbv = (ASN1_VALUE *)&x->cert_info;
    }

    if (signature->type == V_ASN1_BIT_STRING && signature->flags & 0x7) {
        X509err(X509_F_COMMON_VERIFY_SM2, ASN1_R_INVALID_BIT_STRING_BITS_LEFT);
        return -1;
    }

    ctx = EVP_MD_CTX_new();
    if (ctx == ((void*)0)) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    if (EVP_PKEY_type(pknid) != pkey->ameth->pkey_id) {
        X509err(X509_F_COMMON_VERIFY_SM2, ASN1_R_WRONG_PUBLIC_KEY_TYPE);
        goto err;
    }

    if (!EVP_PKEY_set_alias_type(pkey, EVP_PKEY_SM2)) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        ret = 0;
        goto err;
    }
    pctx = EVP_PKEY_CTX_new(pkey, ((void*)0));
    if (pctx == ((void*)0)) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        ret = 0;
        goto err;
    }

    if (sm2_id != ((void*)0)
            && EVP_PKEY_CTX_set1_id(pctx, sm2_id->data, sm2_id->length) != 1) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        ret = 0;
        goto err;
    }
    EVP_MD_CTX_set_pkey_ctx(ctx, pctx);

    if (!EVP_DigestVerifyInit(ctx, ((void*)0), type, ((void*)0), pkey)) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        ret = 0;
        goto err;
    }

    inl = ASN1_item_i2d(tbv, &buf_in,
                        req == 1 ?
                        ASN1_ITEM_rptr(X509_REQ_INFO) :
                        ASN1_ITEM_rptr(X509_CINF));
    if (inl <= 0) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if (buf_in == ((void*)0)) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    inll = inl;

    ret = EVP_DigestVerify(ctx, signature->data,
                           (size_t)signature->length, buf_in, inl);
    if (ret <= 0) {
        X509err(X509_F_COMMON_VERIFY_SM2, ERR_R_EVP_LIB);
        goto err;
    }
    ret = 1;
 err:
    OPENSSL_clear_free(buf_in, inll);
    EVP_MD_CTX_free(ctx);
    EVP_PKEY_CTX_free(pctx);
    return ret;
}
