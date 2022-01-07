
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_set_init (int *,int) ;

__attribute__((used)) static int always_retry_new(BIO *bio)
{
    BIO_set_init(bio, 1);
    return 1;
}
