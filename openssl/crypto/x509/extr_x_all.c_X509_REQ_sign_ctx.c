
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req_info; int signature; int sig_alg; } ;
typedef TYPE_1__ X509_REQ ;
typedef int EVP_MD_CTX ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_sign_ctx (int ,int *,int *,int ,int *,int *) ;
 int X509_REQ_INFO ;

int X509_REQ_sign_ctx(X509_REQ *x, EVP_MD_CTX *ctx)
{
    return ASN1_item_sign_ctx(ASN1_ITEM_rptr(X509_REQ_INFO),
                              &x->sig_alg, ((void*)0), x->signature, &x->req_info,
                              ctx);
}
