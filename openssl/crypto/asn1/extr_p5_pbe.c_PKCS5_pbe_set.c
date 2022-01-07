
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;


 int ASN1_F_PKCS5_PBE_SET ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ PKCS5_pbe_set0_algor (int *,int,int,unsigned char const*,int) ;
 int X509_ALGOR_free (int *) ;
 int * X509_ALGOR_new () ;

X509_ALGOR *PKCS5_pbe_set(int alg, int iter,
                          const unsigned char *salt, int saltlen)
{
    X509_ALGOR *ret;
    ret = X509_ALGOR_new();
    if (ret == ((void*)0)) {
        ASN1err(ASN1_F_PKCS5_PBE_SET, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (PKCS5_pbe_set0_algor(ret, alg, iter, salt, saltlen))
        return ret;

    X509_ALGOR_free(ret);
    return ((void*)0);
}
