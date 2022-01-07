
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asn1_ps_func ;
typedef int BIO ;


 int BIO_C_GET_PREFIX ;
 int asn1_bio_get_ex (int *,int ,int **,int **) ;

int BIO_asn1_get_prefix(BIO *b, asn1_ps_func **pprefix,
                        asn1_ps_func **pprefix_free)
{
    return asn1_bio_get_ex(b, BIO_C_GET_PREFIX, pprefix, pprefix_free);
}
