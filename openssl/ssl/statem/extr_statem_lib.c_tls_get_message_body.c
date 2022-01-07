
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ message_type; size_t message_size; } ;
struct TYPE_15__ {TYPE_2__ tmp; } ;
struct TYPE_17__ {size_t init_num; unsigned char* init_msg; int msg_callback_arg; TYPE_4__* init_buf; int version; int (* msg_callback ) (int ,int ,int ,scalar_t__*,size_t,TYPE_5__*,int ) ;TYPE_3__ s3; int rlayer; int rwstate; TYPE_1__* method; } ;
struct TYPE_16__ {scalar_t__* data; } ;
struct TYPE_13__ {int (* ssl_read_bytes ) (TYPE_5__*,int ,int *,unsigned char*,size_t,int ,size_t*) ;} ;
typedef TYPE_5__ SSL ;


 scalar_t__ RECORD_LAYER_is_sslv2_record (int *) ;
 int SERVER_HELLO_RANDOM_OFFSET ;
 int SSL2_VERSION ;
 size_t SSL3_HM_HEADER_LENGTH ;
 scalar_t__ SSL3_MT_CHANGE_CIPHER_SPEC ;
 scalar_t__ SSL3_MT_FINISHED ;
 scalar_t__ SSL3_MT_KEY_UPDATE ;
 scalar_t__ SSL3_MT_NEWSESSION_TICKET ;
 scalar_t__ SSL3_MT_SERVER_HELLO ;
 int SSL3_RANDOM_SIZE ;
 int SSL3_RT_HANDSHAKE ;
 int SSL_IS_TLS13 (TYPE_5__*) ;
 int SSL_READING ;
 int hrrrandom ;
 scalar_t__ memcmp (int ,scalar_t__*,int) ;
 int ssl3_finish_mac (TYPE_5__*,unsigned char*,size_t) ;
 int ssl3_take_mac (TYPE_5__*) ;
 int stub1 (TYPE_5__*,int ,int *,unsigned char*,size_t,int ,size_t*) ;
 int stub2 (int ,int ,int ,scalar_t__*,size_t,TYPE_5__*,int ) ;
 int stub3 (int ,int ,int ,scalar_t__*,size_t,TYPE_5__*,int ) ;

int tls_get_message_body(SSL *s, size_t *len)
{
    size_t n, readbytes;
    unsigned char *p;
    int i;

    if (s->s3.tmp.message_type == SSL3_MT_CHANGE_CIPHER_SPEC) {

        *len = (unsigned long)s->init_num;
        return 1;
    }

    p = s->init_msg;
    n = s->s3.tmp.message_size - s->init_num;
    while (n > 0) {
        i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, ((void*)0),
                                      &p[s->init_num], n, 0, &readbytes);
        if (i <= 0) {
            s->rwstate = SSL_READING;
            *len = 0;
            return 0;
        }
        s->init_num += readbytes;
        n -= readbytes;
    }





    if (*(s->init_buf->data) == SSL3_MT_FINISHED && !ssl3_take_mac(s)) {

        *len = 0;
        return 0;
    }


    if (RECORD_LAYER_is_sslv2_record(&s->rlayer)) {
        if (!ssl3_finish_mac(s, (unsigned char *)s->init_buf->data,
                             s->init_num)) {

            *len = 0;
            return 0;
        }
        if (s->msg_callback)
            s->msg_callback(0, SSL2_VERSION, 0, s->init_buf->data,
                            (size_t)s->init_num, s, s->msg_callback_arg);
    } else {
        if (!SSL_IS_TLS13(s) || (s->s3.tmp.message_type != SSL3_MT_NEWSESSION_TICKET
                                 && s->s3.tmp.message_type != SSL3_MT_KEY_UPDATE)) {
            if (s->s3.tmp.message_type != SSL3_MT_SERVER_HELLO
                    || s->init_num < (SSL3_HM_HEADER_LENGTH + 2) + SSL3_RANDOM_SIZE
                    || memcmp(hrrrandom,
                              s->init_buf->data + (SSL3_HM_HEADER_LENGTH + 2),
                              SSL3_RANDOM_SIZE) != 0) {
                if (!ssl3_finish_mac(s, (unsigned char *)s->init_buf->data,
                                     s->init_num + SSL3_HM_HEADER_LENGTH)) {

                    *len = 0;
                    return 0;
                }
            }
        }
        if (s->msg_callback)
            s->msg_callback(0, s->version, SSL3_RT_HANDSHAKE, s->init_buf->data,
                            (size_t)s->init_num + SSL3_HM_HEADER_LENGTH, s,
                            s->msg_callback_arg);
    }

    *len = s->init_num;
    return 1;
}
