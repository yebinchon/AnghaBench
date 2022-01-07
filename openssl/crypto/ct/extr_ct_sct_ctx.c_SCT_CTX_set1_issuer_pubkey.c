
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_3__ {int ihashlen; int ihash; } ;
typedef TYPE_1__ SCT_CTX ;


 int ct_public_key_hash (int *,int *,int *) ;

int SCT_CTX_set1_issuer_pubkey(SCT_CTX *sctx, X509_PUBKEY *pubkey)
{
    return ct_public_key_hash(pubkey, &sctx->ihash, &sctx->ihashlen);
}
