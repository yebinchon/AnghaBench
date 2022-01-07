
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int BIO ;


 int BIO_TYPE_DESCRIPTOR ;
 int * BIO_find_type (int *,int ) ;
 int BIO_get_fd (int *,int*) ;
 int * SSL_get_wbio (int const*) ;

int SSL_get_wfd(const SSL *s)
{
    int ret = -1;
    BIO *b, *r;

    b = SSL_get_wbio(s);
    r = BIO_find_type(b, BIO_TYPE_DESCRIPTOR);
    if (r != ((void*)0))
        BIO_get_fd(r, &ret);
    return ret;
}
