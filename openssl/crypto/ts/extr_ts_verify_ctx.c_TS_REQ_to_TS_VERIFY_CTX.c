
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_12__ {int * hashed_msg; int * hash_algo; } ;
struct TYPE_11__ {int * nonce; TYPE_3__* msg_imprint; int * policy_id; } ;
struct TYPE_10__ {int flags; int * nonce; int imprint_len; int * imprint; int * md_alg; int * policy; } ;
typedef TYPE_1__ TS_VERIFY_CTX ;
typedef TYPE_2__ TS_REQ ;
typedef TYPE_3__ TS_MSG_IMPRINT ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_OBJECT ;
typedef int ASN1_INTEGER ;


 int * ASN1_INTEGER_dup (int const*) ;
 int ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int * OBJ_dup (int *) ;
 int OPENSSL_assert (int ) ;
 int * OPENSSL_malloc (int ) ;
 int TS_VERIFY_CTX_cleanup (TYPE_1__*) ;
 int TS_VERIFY_CTX_free (TYPE_1__*) ;
 TYPE_1__* TS_VERIFY_CTX_new () ;
 int TS_VFY_ALL_IMPRINT ;
 int TS_VFY_NONCE ;
 int TS_VFY_POLICY ;
 int TS_VFY_SIGNATURE ;
 int TS_VFY_TSA_NAME ;
 int * X509_ALGOR_dup (int *) ;
 int memcpy (int *,int ,int ) ;

TS_VERIFY_CTX *TS_REQ_to_TS_VERIFY_CTX(TS_REQ *req, TS_VERIFY_CTX *ctx)
{
    TS_VERIFY_CTX *ret = ctx;
    ASN1_OBJECT *policy;
    TS_MSG_IMPRINT *imprint;
    X509_ALGOR *md_alg;
    ASN1_OCTET_STRING *msg;
    const ASN1_INTEGER *nonce;

    OPENSSL_assert(req != ((void*)0));
    if (ret)
        TS_VERIFY_CTX_cleanup(ret);
    else if ((ret = TS_VERIFY_CTX_new()) == ((void*)0))
        return ((void*)0);

    ret->flags = TS_VFY_ALL_IMPRINT & ~(TS_VFY_TSA_NAME | TS_VFY_SIGNATURE);

    if ((policy = req->policy_id) != ((void*)0)) {
        if ((ret->policy = OBJ_dup(policy)) == ((void*)0))
            goto err;
    } else
        ret->flags &= ~TS_VFY_POLICY;

    imprint = req->msg_imprint;
    md_alg = imprint->hash_algo;
    if ((ret->md_alg = X509_ALGOR_dup(md_alg)) == ((void*)0))
        goto err;
    msg = imprint->hashed_msg;
    ret->imprint_len = ASN1_STRING_length(msg);
    if ((ret->imprint = OPENSSL_malloc(ret->imprint_len)) == ((void*)0))
        goto err;
    memcpy(ret->imprint, ASN1_STRING_get0_data(msg), ret->imprint_len);

    if ((nonce = req->nonce) != ((void*)0)) {
        if ((ret->nonce = ASN1_INTEGER_dup(nonce)) == ((void*)0))
            goto err;
    } else
        ret->flags &= ~TS_VFY_NONCE;

    return ret;
 err:
    if (ctx)
        TS_VERIFY_CTX_cleanup(ctx);
    else
        TS_VERIFY_CTX_free(ret);
    return ((void*)0);
}
