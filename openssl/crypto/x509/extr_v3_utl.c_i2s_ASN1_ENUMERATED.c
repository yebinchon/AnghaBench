
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_EXT_METHOD ;
typedef int BIGNUM ;
typedef int ASN1_ENUMERATED ;


 int * ASN1_ENUMERATED_to_BN (int const*,int *) ;
 int BN_free (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int X509V3_F_I2S_ASN1_ENUMERATED ;
 int X509V3err (int ,int ) ;
 char* bignum_to_string (int *) ;

char *i2s_ASN1_ENUMERATED(X509V3_EXT_METHOD *method, const ASN1_ENUMERATED *a)
{
    BIGNUM *bntmp = ((void*)0);
    char *strtmp = ((void*)0);

    if (!a)
        return ((void*)0);
    if ((bntmp = ASN1_ENUMERATED_to_BN(a, ((void*)0))) == ((void*)0)
        || (strtmp = bignum_to_string(bntmp)) == ((void*)0))
        X509V3err(X509V3_F_I2S_ASN1_ENUMERATED, ERR_R_MALLOC_FAILURE);
    BN_free(bntmp);
    return strtmp;
}
