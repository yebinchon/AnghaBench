
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_set_retry_read (int *) ;

__attribute__((used)) static int always_retry_read(BIO *bio, char *out, int outl)
{
    BIO_set_retry_read(bio);
    return -1;
}
