
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_SIG_INFO ;
typedef int X509_ALGOR ;
typedef int ASN1_STRING ;


 int NID_ED448 ;
 int NID_undef ;
 int X448_SECURITY_BITS ;
 int X509_SIG_INFO_TLS ;
 int X509_SIG_INFO_set (int *,int ,int ,int ,int ) ;

__attribute__((used)) static int ecd_sig_info_set448(X509_SIG_INFO *siginf, const X509_ALGOR *alg,
                               const ASN1_STRING *sig)
{
    X509_SIG_INFO_set(siginf, NID_undef, NID_ED448, X448_SECURITY_BITS,
                      X509_SIG_INFO_TLS);
    return 1;
}
