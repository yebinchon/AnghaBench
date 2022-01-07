
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509_CRL ;


 int ERR_R_MALLOC_FAILURE ;
 int X509_F_X509_STORE_ADD_CRL ;
 int X509err (int ,int ) ;
 int x509_store_add (int *,int *,int) ;

int X509_STORE_add_crl(X509_STORE *ctx, X509_CRL *x)
{
    if (!x509_store_add(ctx, x, 1)) {
        X509err(X509_F_X509_STORE_ADD_CRL, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}
