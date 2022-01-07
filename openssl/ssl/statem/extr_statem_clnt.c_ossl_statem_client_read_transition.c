
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_24__ {int hand_state; } ;
struct TYPE_22__ {int ticket_expected; int status_expected; int * session_secret_cb; } ;
struct TYPE_20__ {TYPE_3__* new_cipher; } ;
struct TYPE_21__ {TYPE_4__ tmp; } ;
struct TYPE_23__ {int hit; int rwstate; scalar_t__ init_num; TYPE_6__ ext; TYPE_5__ s3; TYPE_2__* session; int version; TYPE_8__ statem; } ;
struct TYPE_19__ {int algorithm_auth; int algorithm_mkey; } ;
struct TYPE_17__ {int * tick; } ;
struct TYPE_18__ {TYPE_1__ ext; } ;
typedef TYPE_7__ SSL ;
typedef TYPE_8__ OSSL_STATEM ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int BIO_set_retry_read (int *) ;
 int DTLS1_MT_HELLO_VERIFY_REQUEST ;
 void* DTLS_ST_CR_HELLO_VERIFY_REQUEST ;
 int SSL3_AD_UNEXPECTED_MESSAGE ;
 int SSL3_MT_CERTIFICATE ;
 int SSL3_MT_CERTIFICATE_REQUEST ;
 int SSL3_MT_CERTIFICATE_STATUS ;
 int SSL3_MT_CHANGE_CIPHER_SPEC ;
 int SSL3_MT_FINISHED ;
 int SSL3_MT_HELLO_REQUEST ;
 int SSL3_MT_NEWSESSION_TICKET ;
 int SSL3_MT_SERVER_DONE ;
 int SSL3_MT_SERVER_HELLO ;
 int SSL3_MT_SERVER_KEY_EXCHANGE ;
 int SSL_F_OSSL_STATEM_CLIENT_READ_TRANSITION ;
 scalar_t__ SSL_IS_DTLS (TYPE_7__*) ;
 scalar_t__ SSL_IS_TLS13 (TYPE_7__*) ;
 int SSL_PSK ;
 int SSL_READING ;
 int SSL_R_UNEXPECTED_MESSAGE ;
 int SSL_aNULL ;
 int SSL_aPSK ;
 int SSL_aSRP ;
 int * SSL_get_rbio (TYPE_7__*) ;
 int SSLfatal (TYPE_7__*,int ,int ,int ) ;
 int TLS1_VERSION ;




 int TLS_ST_CR_FINISHED ;
 int TLS_ST_CR_HELLO_REQ ;


 void* TLS_ST_CR_SRVR_DONE ;





 int cert_req_allowed (TYPE_7__*) ;
 int key_exchange_expected (TYPE_7__*) ;
 int ossl_statem_client13_read_transition (TYPE_7__*,int) ;

int ossl_statem_client_read_transition(SSL *s, int mt)
{
    OSSL_STATEM *st = &s->statem;
    int ske_expected;





    if (SSL_IS_TLS13(s)) {
        if (!ossl_statem_client13_read_transition(s, mt))
            goto err;
        return 1;
    }

    switch (st->hand_state) {
    default:
        break;

    case 131:
        if (mt == SSL3_MT_SERVER_HELLO) {
            st->hand_state = 132;
            return 1;
        }

        if (SSL_IS_DTLS(s)) {
            if (mt == DTLS1_MT_HELLO_VERIFY_REQUEST) {
                st->hand_state = DTLS_ST_CR_HELLO_VERIFY_REQUEST;
                return 1;
            }
        }
        break;

    case 129:





        if (mt == SSL3_MT_SERVER_HELLO) {
            st->hand_state = 132;
            return 1;
        }
        break;

    case 132:
        if (s->hit) {
            if (s->ext.ticket_expected) {
                if (mt == SSL3_MT_NEWSESSION_TICKET) {
                    st->hand_state = 133;
                    return 1;
                }
            } else if (mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
                st->hand_state = 135;
                return 1;
            }
        } else {
            if (SSL_IS_DTLS(s) && mt == DTLS1_MT_HELLO_VERIFY_REQUEST) {
                st->hand_state = DTLS_ST_CR_HELLO_VERIFY_REQUEST;
                return 1;
            } else if (s->version >= TLS1_VERSION
                       && s->ext.session_secret_cb != ((void*)0)
                       && s->session->ext.tick != ((void*)0)
                       && mt == SSL3_MT_CHANGE_CIPHER_SPEC) {






                s->hit = 1;
                st->hand_state = 135;
                return 1;
            } else if (!(s->s3.tmp.new_cipher->algorithm_auth
                         & (SSL_aNULL | SSL_aSRP | SSL_aPSK))) {
                if (mt == SSL3_MT_CERTIFICATE) {
                    st->hand_state = 138;
                    return 1;
                }
            } else {
                ske_expected = key_exchange_expected(s);

                if (ske_expected
                    || ((s->s3.tmp.new_cipher->algorithm_mkey & SSL_PSK)
                        && mt == SSL3_MT_SERVER_KEY_EXCHANGE)) {
                    if (mt == SSL3_MT_SERVER_KEY_EXCHANGE) {
                        st->hand_state = 134;
                        return 1;
                    }
                } else if (mt == SSL3_MT_CERTIFICATE_REQUEST
                           && cert_req_allowed(s)) {
                    st->hand_state = 137;
                    return 1;
                } else if (mt == SSL3_MT_SERVER_DONE) {
                    st->hand_state = TLS_ST_CR_SRVR_DONE;
                    return 1;
                }
            }
        }
        break;

    case 138:




        if (s->ext.status_expected && mt == SSL3_MT_CERTIFICATE_STATUS) {
            st->hand_state = 136;
            return 1;
        }


    case 136:
        ske_expected = key_exchange_expected(s);

        if (ske_expected || ((s->s3.tmp.new_cipher->algorithm_mkey & SSL_PSK)
                             && mt == SSL3_MT_SERVER_KEY_EXCHANGE)) {
            if (mt == SSL3_MT_SERVER_KEY_EXCHANGE) {
                st->hand_state = 134;
                return 1;
            }
            goto err;
        }


    case 134:
        if (mt == SSL3_MT_CERTIFICATE_REQUEST) {
            if (cert_req_allowed(s)) {
                st->hand_state = 137;
                return 1;
            }
            goto err;
        }


    case 137:
        if (mt == SSL3_MT_SERVER_DONE) {
            st->hand_state = TLS_ST_CR_SRVR_DONE;
            return 1;
        }
        break;

    case 130:
        if (s->ext.ticket_expected) {
            if (mt == SSL3_MT_NEWSESSION_TICKET) {
                st->hand_state = 133;
                return 1;
            }
        } else if (mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
            st->hand_state = 135;
            return 1;
        }
        break;

    case 133:
        if (mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
            st->hand_state = 135;
            return 1;
        }
        break;

    case 135:
        if (mt == SSL3_MT_FINISHED) {
            st->hand_state = TLS_ST_CR_FINISHED;
            return 1;
        }
        break;

    case 128:
        if (mt == SSL3_MT_HELLO_REQUEST) {
            st->hand_state = TLS_ST_CR_HELLO_REQ;
            return 1;
        }
        break;
    }

 err:

    if (SSL_IS_DTLS(s) && mt == SSL3_MT_CHANGE_CIPHER_SPEC) {
        BIO *rbio;





        s->init_num = 0;
        s->rwstate = SSL_READING;
        rbio = SSL_get_rbio(s);
        BIO_clear_retry_flags(rbio);
        BIO_set_retry_read(rbio);
        return 0;
    }
    SSLfatal(s, SSL3_AD_UNEXPECTED_MESSAGE,
             SSL_F_OSSL_STATEM_CLIENT_READ_TRANSITION,
             SSL_R_UNEXPECTED_MESSAGE);
    return 0;
}
