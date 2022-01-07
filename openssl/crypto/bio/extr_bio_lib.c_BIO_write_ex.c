
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int bio_write_intern (int *,void const*,size_t,size_t*) ;

int BIO_write_ex(BIO *b, const void *data, size_t dlen, size_t *written)
{
    int ret;

    ret = bio_write_intern(b, data, dlen, written);

    if (ret > 0)
        ret = 1;
    else
        ret = 0;

    return ret;
}
