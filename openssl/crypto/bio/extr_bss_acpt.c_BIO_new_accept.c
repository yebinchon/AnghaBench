
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_accept () ;
 scalar_t__ BIO_set_accept_name (int *,char const*) ;

BIO *BIO_new_accept(const char *str)
{
    BIO *ret;

    ret = BIO_new(BIO_s_accept());
    if (ret == ((void*)0))
        return ((void*)0);
    if (BIO_set_accept_name(ret, str))
        return ret;
    BIO_free(ret);
    return ((void*)0);
}
