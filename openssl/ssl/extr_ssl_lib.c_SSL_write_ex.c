
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl_write_internal (int *,void const*,size_t,size_t*) ;

int SSL_write_ex(SSL *s, const void *buf, size_t num, size_t *written)
{
    int ret = ssl_write_internal(s, buf, num, written);

    if (ret < 0)
        ret = 0;
    return ret;
}
