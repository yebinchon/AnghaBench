
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int message_type; size_t message_size; } ;
struct TYPE_14__ {int flags; TYPE_3__ tmp; } ;
struct TYPE_12__ {scalar_t__ hand_state; } ;
struct TYPE_16__ {size_t init_num; TYPE_5__* init_buf; scalar_t__ init_msg; TYPE_4__ s3; int rlayer; int msg_callback_arg; int version; int (* msg_callback ) (int ,int ,int,unsigned char*,size_t,TYPE_6__*,int ) ;TYPE_2__ statem; int server; int rwstate; TYPE_1__* method; } ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_11__ {int (* ssl_read_bytes ) (TYPE_6__*,int,int*,unsigned char*,size_t,int ,size_t*) ;} ;
typedef TYPE_6__ SSL ;


 size_t INT_MAX ;
 size_t RECORD_LAYER_get_rrec_length (int *) ;
 scalar_t__ RECORD_LAYER_is_sslv2_record (int *) ;
 size_t SSL3_HM_HEADER_LENGTH ;
 unsigned char SSL3_MT_CCS ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 unsigned char SSL3_MT_HELLO_REQUEST ;
 int SSL3_RT_CHANGE_CIPHER_SPEC ;
 int SSL3_RT_HANDSHAKE ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_UNEXPECTED_MESSAGE ;
 int SSL_F_TLS_GET_MESSAGE_HEADER ;
 int SSL_READING ;
 int SSL_R_BAD_CHANGE_CIPHER_SPEC ;
 int SSL_R_CCS_RECEIVED_EARLY ;
 int SSL_R_EXCESSIVE_MESSAGE_SIZE ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 int TLS1_FLAGS_STATELESS ;
 scalar_t__ TLS_ST_BEFORE ;
 scalar_t__ TLS_ST_OK ;
 int n2l3 (unsigned char*,size_t) ;
 int stub1 (TYPE_6__*,int,int*,unsigned char*,size_t,int ,size_t*) ;
 int stub2 (int ,int ,int,unsigned char*,size_t,TYPE_6__*,int ) ;

int tls_get_message_header(SSL *s, int *mt)
{

    int skip_message, i, recvd_type;
    unsigned char *p;
    size_t l, readbytes;

    p = (unsigned char *)s->init_buf->data;

    do {
        while (s->init_num < SSL3_HM_HEADER_LENGTH) {
            i = s->method->ssl_read_bytes(s, SSL3_RT_HANDSHAKE, &recvd_type,
                                          &p[s->init_num],
                                          SSL3_HM_HEADER_LENGTH - s->init_num,
                                          0, &readbytes);
            if (i <= 0) {
                s->rwstate = SSL_READING;
                return 0;
            }
            if (recvd_type == SSL3_RT_CHANGE_CIPHER_SPEC) {




                if (s->init_num != 0 || readbytes != 1 || p[0] != SSL3_MT_CCS) {
                    SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE,
                             SSL_F_TLS_GET_MESSAGE_HEADER,
                             SSL_R_BAD_CHANGE_CIPHER_SPEC);
                    return 0;
                }
                if (s->statem.hand_state == TLS_ST_BEFORE
                        && (s->s3.flags & TLS1_FLAGS_STATELESS) != 0) {







                    return 0;
                }
                s->s3.tmp.message_type = *mt = SSL3_MT_CHANGE_CIPHER_SPEC;
                s->init_num = readbytes - 1;
                s->init_msg = s->init_buf->data;
                s->s3.tmp.message_size = readbytes;
                return 1;
            } else if (recvd_type != SSL3_RT_HANDSHAKE) {
                SSLfatal(s, SSL_AD_UNEXPECTED_MESSAGE,
                         SSL_F_TLS_GET_MESSAGE_HEADER,
                         SSL_R_CCS_RECEIVED_EARLY);
                return 0;
            }
            s->init_num += readbytes;
        }

        skip_message = 0;
        if (!s->server)
            if (s->statem.hand_state != TLS_ST_OK
                    && p[0] == SSL3_MT_HELLO_REQUEST)






                if (p[1] == 0 && p[2] == 0 && p[3] == 0) {
                    s->init_num = 0;
                    skip_message = 1;

                    if (s->msg_callback)
                        s->msg_callback(0, s->version, SSL3_RT_HANDSHAKE,
                                        p, SSL3_HM_HEADER_LENGTH, s,
                                        s->msg_callback_arg);
                }
    } while (skip_message);


    *mt = *p;
    s->s3.tmp.message_type = *(p++);

    if (RECORD_LAYER_is_sslv2_record(&s->rlayer)) {







        l = RECORD_LAYER_get_rrec_length(&s->rlayer)
            + SSL3_HM_HEADER_LENGTH;
        s->s3.tmp.message_size = l;

        s->init_msg = s->init_buf->data;
        s->init_num = SSL3_HM_HEADER_LENGTH;
    } else {
        n2l3(p, l);

        if (l > (INT_MAX - SSL3_HM_HEADER_LENGTH)) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_GET_MESSAGE_HEADER,
                     SSL_R_EXCESSIVE_MESSAGE_SIZE);
            return 0;
        }
        s->s3.tmp.message_size = l;

        s->init_msg = s->init_buf->data + SSL3_HM_HEADER_LENGTH;
        s->init_num = 0;
    }

    return 1;
}
