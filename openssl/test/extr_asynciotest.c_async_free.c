
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_ctrs {int dummy; } ;
typedef int BIO ;


 struct async_ctrs* BIO_get_data (int *) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int OPENSSL_free (struct async_ctrs*) ;

__attribute__((used)) static int async_free(BIO *bio)
{
    struct async_ctrs *ctrs;

    if (bio == ((void*)0))
        return 0;
    ctrs = BIO_get_data(bio);
    OPENSSL_free(ctrs);
    BIO_set_data(bio, ((void*)0));
    BIO_set_init(bio, 0);

    return 1;
}
