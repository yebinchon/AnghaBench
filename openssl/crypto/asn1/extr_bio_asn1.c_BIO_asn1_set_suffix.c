
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asn1_ps_func ;
typedef int BIO ;


 int BIO_C_SET_SUFFIX ;
 int asn1_bio_set_ex (int *,int ,int *,int *) ;

int BIO_asn1_set_suffix(BIO *b, asn1_ps_func *suffix,
                        asn1_ps_func *suffix_free)
{
    return asn1_bio_set_ex(b, BIO_C_SET_SUFFIX, suffix, suffix_free);
}
