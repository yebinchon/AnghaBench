
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SCT_CTX ;


 int SCT_CTX_set1_issuer_pubkey (int *,int ) ;
 int X509_get_X509_PUBKEY (int const*) ;

int SCT_CTX_set1_issuer(SCT_CTX *sctx, const X509 *issuer)
{
    return SCT_CTX_set1_issuer_pubkey(sctx, X509_get_X509_PUBKEY(issuer));
}
