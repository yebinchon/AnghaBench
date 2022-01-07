
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int BIO_copy_next_retry (int *) ;
 int * BIO_next (int *) ;
 int BIO_read_ex (int *,char*,size_t,size_t*) ;

__attribute__((used)) static int tap_read_ex(BIO *b, char *buf, size_t size, size_t *out_size)
{
    BIO *next = BIO_next(b);
    int ret = 0;

    ret = BIO_read_ex(next, buf, size, out_size);
    BIO_clear_retry_flags(b);
    BIO_copy_next_retry(b);
    return ret;
}
