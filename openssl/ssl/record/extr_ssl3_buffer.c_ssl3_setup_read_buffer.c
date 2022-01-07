
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int rlayer; } ;
struct TYPE_8__ {unsigned char* buf; size_t default_len; size_t len; } ;
typedef TYPE_1__ SSL3_BUFFER ;
typedef TYPE_2__ SSL ;


 size_t DTLS1_RT_HEADER_LENGTH ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_malloc (size_t) ;
 TYPE_1__* RECORD_LAYER_get_rbuf (int *) ;
 int RECORD_LAYER_set_packet (int *,unsigned char*) ;
 int SSL3_ALIGN_PAYLOAD ;
 int SSL3_RT_HEADER_LENGTH ;
 scalar_t__ SSL3_RT_MAX_COMPRESSED_OVERHEAD ;
 size_t SSL3_RT_MAX_ENCRYPTED_OVERHEAD ;
 size_t SSL3_RT_MAX_PLAIN_LENGTH ;
 int SSL_AD_NO_ALERT ;
 int SSL_F_SSL3_SETUP_READ_BUFFER ;
 scalar_t__ SSL_IS_DTLS (TYPE_2__*) ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ ssl_allow_compression (TYPE_2__*) ;

int ssl3_setup_read_buffer(SSL *s)
{
    unsigned char *p;
    size_t len, align = 0, headerlen;
    SSL3_BUFFER *b;

    b = RECORD_LAYER_get_rbuf(&s->rlayer);

    if (SSL_IS_DTLS(s))
        headerlen = DTLS1_RT_HEADER_LENGTH;
    else
        headerlen = SSL3_RT_HEADER_LENGTH;





    if (b->buf == ((void*)0)) {
        len = SSL3_RT_MAX_PLAIN_LENGTH
            + SSL3_RT_MAX_ENCRYPTED_OVERHEAD + headerlen + align;

        if (ssl_allow_compression(s))
            len += SSL3_RT_MAX_COMPRESSED_OVERHEAD;

        if (b->default_len > len)
            len = b->default_len;
        if ((p = OPENSSL_malloc(len)) == ((void*)0)) {





            SSLfatal(s, SSL_AD_NO_ALERT, SSL_F_SSL3_SETUP_READ_BUFFER,
                     ERR_R_MALLOC_FAILURE);
            return 0;
        }
        b->buf = p;
        b->len = len;
    }

    RECORD_LAYER_set_packet(&s->rlayer, &(b->buf[0]));
    return 1;
}
