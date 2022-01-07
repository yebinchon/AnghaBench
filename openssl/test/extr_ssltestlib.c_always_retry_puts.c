
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_set_retry_write (int *) ;

__attribute__((used)) static int always_retry_puts(BIO *bio, const char *str)
{
    BIO_set_retry_write(bio);
    return -1;
}
