
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * confunc_f ;
typedef int WPACKET ;
struct TYPE_7__ {int hand_state; } ;
struct TYPE_6__ {TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 int DTLS1_MT_HELLO_VERIFY_REQUEST ;

 int SSL3_MT_CERTIFICATE ;
 int SSL3_MT_CERTIFICATE_REQUEST ;
 int SSL3_MT_CERTIFICATE_STATUS ;
 int SSL3_MT_CERTIFICATE_VERIFY ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 int SSL3_MT_DUMMY ;
 int SSL3_MT_ENCRYPTED_EXTENSIONS ;
 int SSL3_MT_FINISHED ;
 int SSL3_MT_HELLO_REQUEST ;
 int SSL3_MT_KEY_UPDATE ;
 int SSL3_MT_NEWSESSION_TICKET ;
 int SSL3_MT_SERVER_DONE ;
 int SSL3_MT_SERVER_HELLO ;
 int SSL3_MT_SERVER_KEY_EXCHANGE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_OSSL_STATEM_SERVER_CONSTRUCT_MESSAGE ;
 int SSL_IS_DTLS (TYPE_1__*) ;
 int SSL_R_BAD_HANDSHAKE_STATE ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int * dtls_construct_change_cipher_spec ;
 int * dtls_construct_hello_verify_request ;
 int * tls_construct_cert_status ;
 int * tls_construct_cert_verify ;
 int * tls_construct_certificate_request ;
 int * tls_construct_change_cipher_spec ;
 int * tls_construct_encrypted_extensions ;
 int * tls_construct_finished ;
 int * tls_construct_key_update ;
 int * tls_construct_new_session_ticket ;
 int * tls_construct_server_certificate ;
 int * tls_construct_server_done ;
 int * tls_construct_server_hello ;
 int * tls_construct_server_key_exchange ;

int ossl_statem_server_construct_message(SSL *s, WPACKET *pkt,
                                         confunc_f *confunc, int *mt)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_SERVER_CONSTRUCT_MESSAGE,
                 SSL_R_BAD_HANDSHAKE_STATE);
        return 0;

    case 136:
        if (SSL_IS_DTLS(s))
            *confunc = dtls_construct_change_cipher_spec;
        else
            *confunc = tls_construct_change_cipher_spec;
        *mt = SSL3_MT_CHANGE_CIPHER_SPEC;
        break;

    case 142:
        *confunc = dtls_construct_hello_verify_request;
        *mt = DTLS1_MT_HELLO_VERIFY_REQUEST;
        break;

    case 133:

        *confunc = ((void*)0);
        *mt = SSL3_MT_HELLO_REQUEST;
        break;

    case 128:
        *confunc = tls_construct_server_hello;
        *mt = SSL3_MT_SERVER_HELLO;
        break;

    case 140:
        *confunc = tls_construct_server_certificate;
        *mt = SSL3_MT_CERTIFICATE;
        break;

    case 137:
        *confunc = tls_construct_cert_verify;
        *mt = SSL3_MT_CERTIFICATE_VERIFY;
        break;


    case 132:
        *confunc = tls_construct_server_key_exchange;
        *mt = SSL3_MT_SERVER_KEY_EXCHANGE;
        break;

    case 139:
        *confunc = tls_construct_certificate_request;
        *mt = SSL3_MT_CERTIFICATE_REQUEST;
        break;

    case 129:
        *confunc = tls_construct_server_done;
        *mt = SSL3_MT_SERVER_DONE;
        break;

    case 130:
        *confunc = tls_construct_new_session_ticket;
        *mt = SSL3_MT_NEWSESSION_TICKET;
        break;

    case 138:
        *confunc = tls_construct_cert_status;
        *mt = SSL3_MT_CERTIFICATE_STATUS;
        break;

    case 134:
        *confunc = tls_construct_finished;
        *mt = SSL3_MT_FINISHED;
        break;

    case 141:
        *confunc = ((void*)0);
        *mt = SSL3_MT_DUMMY;
        break;

    case 135:
        *confunc = tls_construct_encrypted_extensions;
        *mt = SSL3_MT_ENCRYPTED_EXTENSIONS;
        break;

    case 131:
        *confunc = tls_construct_key_update;
        *mt = SSL3_MT_KEY_UPDATE;
        break;
    }

    return 1;
}
