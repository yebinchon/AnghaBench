
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t renegotiate_count; size_t byte_count; unsigned long renegotiate_timeout; unsigned long last_time; int num_renegotiates; int * ssl; } ;
typedef int SSL ;
typedef TYPE_1__ BIO_SSL ;
typedef int BIO ;


 int BIO_RR_ACCEPT ;
 int BIO_RR_CONNECT ;
 int BIO_RR_SSL_X509_LOOKUP ;
 int BIO_clear_retry_flags (int *) ;
 TYPE_1__* BIO_get_data (int *) ;
 int BIO_set_retry_read (int *) ;
 int BIO_set_retry_reason (int *,int) ;
 int BIO_set_retry_special (int *) ;
 int BIO_set_retry_write (int *) ;
 int SSL_get_error (int *,int) ;
 int SSL_renegotiate (int *) ;
 int ssl_read_internal (int *,char*,size_t,size_t*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int ssl_read(BIO *b, char *buf, size_t size, size_t *readbytes)
{
    int ret = 1;
    BIO_SSL *sb;
    SSL *ssl;
    int retry_reason = 0;
    int r = 0;

    if (buf == ((void*)0))
        return 0;
    sb = BIO_get_data(b);
    ssl = sb->ssl;

    BIO_clear_retry_flags(b);

    ret = ssl_read_internal(ssl, buf, size, readbytes);

    switch (SSL_get_error(ssl, ret)) {
    case 136:
        if (sb->renegotiate_count > 0) {
            sb->byte_count += *readbytes;
            if (sb->byte_count > sb->renegotiate_count) {
                sb->byte_count = 0;
                sb->num_renegotiates++;
                SSL_renegotiate(ssl);
                r = 1;
            }
        }
        if ((sb->renegotiate_timeout > 0) && (!r)) {
            unsigned long tm;

            tm = (unsigned long)time(((void*)0));
            if (tm > sb->last_time + sb->renegotiate_timeout) {
                sb->last_time = tm;
                sb->num_renegotiates++;
                SSL_renegotiate(ssl);
            }
        }

        break;
    case 131:
        BIO_set_retry_read(b);
        break;
    case 130:
        BIO_set_retry_write(b);
        break;
    case 129:
        BIO_set_retry_special(b);
        retry_reason = BIO_RR_SSL_X509_LOOKUP;
        break;
    case 133:
        BIO_set_retry_special(b);
        retry_reason = BIO_RR_ACCEPT;
        break;
    case 132:
        BIO_set_retry_special(b);
        retry_reason = BIO_RR_CONNECT;
        break;
    case 134:
    case 135:
    case 128:
    default:
        break;
    }

    BIO_set_retry_reason(b, retry_reason);

    return ret;
}
