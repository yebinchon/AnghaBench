
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_ctrs {int dummy; } ;
typedef int BIO ;


 int BIO_set_data (int *,struct async_ctrs*) ;
 int BIO_set_init (int *,int) ;
 struct async_ctrs* OPENSSL_zalloc (int) ;

__attribute__((used)) static int async_new(BIO *bio)
{
    struct async_ctrs *ctrs;

    ctrs = OPENSSL_zalloc(sizeof(struct async_ctrs));
    if (ctrs == ((void*)0))
        return 0;

    BIO_set_data(bio, ctrs);
    BIO_set_init(bio, 1);
    return 1;
}
