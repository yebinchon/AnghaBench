
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* mac; } ;
struct TYPE_5__ {int dinfo; } ;
typedef TYPE_2__ PKCS12 ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_STRING_get0_data (int const*) ;
 scalar_t__ ASN1_STRING_length (int const*) ;
 scalar_t__ CRYPTO_memcmp (unsigned char*,int ,unsigned int) ;
 int EVP_MAX_MD_SIZE ;
 int PKCS12_F_PKCS12_VERIFY_MAC ;
 int PKCS12_R_MAC_ABSENT ;
 int PKCS12_R_MAC_GENERATION_ERROR ;
 int PKCS12_key_gen_utf8 ;
 int PKCS12err (int ,int ) ;
 int X509_SIG_get0 (int ,int *,int const**) ;
 int pkcs12_gen_mac (TYPE_2__*,char const*,int,unsigned char*,unsigned int*,int ) ;

int PKCS12_verify_mac(PKCS12 *p12, const char *pass, int passlen)
{
    unsigned char mac[EVP_MAX_MD_SIZE];
    unsigned int maclen;
    const ASN1_OCTET_STRING *macoct;

    if (p12->mac == ((void*)0)) {
        PKCS12err(PKCS12_F_PKCS12_VERIFY_MAC, PKCS12_R_MAC_ABSENT);
        return 0;
    }
    if (!pkcs12_gen_mac(p12, pass, passlen, mac, &maclen,
                        PKCS12_key_gen_utf8)) {
        PKCS12err(PKCS12_F_PKCS12_VERIFY_MAC, PKCS12_R_MAC_GENERATION_ERROR);
        return 0;
    }
    X509_SIG_get0(p12->mac->dinfo, ((void*)0), &macoct);
    if ((maclen != (unsigned int)ASN1_STRING_length(macoct))
        || CRYPTO_memcmp(mac, ASN1_STRING_get0_data(macoct), maclen) != 0)
        return 0;

    return 1;
}
