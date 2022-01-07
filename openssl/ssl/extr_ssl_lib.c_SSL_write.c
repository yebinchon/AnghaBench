
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_F_SSL_WRITE ;
 int SSL_R_BAD_LENGTH ;
 int SSLerr (int ,int ) ;
 int ssl_write_internal (int *,void const*,size_t,size_t*) ;

int SSL_write(SSL *s, const void *buf, int num)
{
    int ret;
    size_t written;

    if (num < 0) {
        SSLerr(SSL_F_SSL_WRITE, SSL_R_BAD_LENGTH);
        return -1;
    }

    ret = ssl_write_internal(s, buf, (size_t)num, &written);





    if (ret > 0)
        ret = (int)written;

    return ret;
}
