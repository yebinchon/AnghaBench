
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_get_data (int *) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int EVP_MD_CTX_free (int ) ;

__attribute__((used)) static int md_free(BIO *a)
{
    if (a == ((void*)0))
        return 0;
    EVP_MD_CTX_free(BIO_get_data(a));
    BIO_set_data(a, ((void*)0));
    BIO_set_init(a, 0);

    return 1;
}
