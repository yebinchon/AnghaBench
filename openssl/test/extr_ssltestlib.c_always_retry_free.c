
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;

__attribute__((used)) static int always_retry_free(BIO *bio)
{
    BIO_set_data(bio, ((void*)0));
    BIO_set_init(bio, 0);
    return 1;
}
