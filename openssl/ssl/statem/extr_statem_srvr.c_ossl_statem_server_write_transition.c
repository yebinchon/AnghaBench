
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int WRITE_TRAN ;
struct TYPE_24__ {int hand_state; int request_state; } ;
struct TYPE_22__ {int ticket_expected; int status_expected; } ;
struct TYPE_20__ {TYPE_2__* new_cipher; } ;
struct TYPE_21__ {TYPE_3__ tmp; } ;
struct TYPE_23__ {int hit; TYPE_5__ ext; TYPE_4__ s3; int renegotiate; TYPE_1__* d1; TYPE_7__ statem; } ;
struct TYPE_19__ {int algorithm_auth; } ;
struct TYPE_18__ {int cookie_verified; } ;
typedef TYPE_6__ SSL ;
typedef TYPE_7__ OSSL_STATEM ;



 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_OSSL_STATEM_SERVER_WRITE_TRANSITION ;
 int SSL_IS_DTLS (TYPE_6__*) ;
 int SSL_IS_FIRST_HANDSHAKE (TYPE_6__*) ;
 scalar_t__ SSL_IS_TLS13 (TYPE_6__*) ;
 int SSL_OP_COOKIE_EXCHANGE ;
 int SSL_aNULL ;
 int SSL_aPSK ;
 int SSL_aSRP ;
 int SSL_get_options (TYPE_6__*) ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 int WRITE_TRAN_CONTINUE ;
 int WRITE_TRAN_ERROR ;
 int WRITE_TRAN_FINISHED ;
 int ossl_statem_server13_write_transition (TYPE_6__*) ;
 int send_certificate_request (TYPE_6__*) ;
 int send_server_key_exchange (TYPE_6__*) ;
 int tls_setup_handshake (TYPE_6__*) ;

WRITE_TRAN ossl_statem_server_write_transition(SSL *s)
{
    OSSL_STATEM *st = &s->statem;






    if (SSL_IS_TLS13(s))
        return ossl_statem_server13_write_transition(s);

    switch (st->hand_state) {
    default:

        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_OSSL_STATEM_SERVER_WRITE_TRANSITION,
                 ERR_R_INTERNAL_ERROR);
        return WRITE_TRAN_ERROR;

    case 140:
        if (st->request_state == 132) {

            st->hand_state = 132;
            st->request_state = 141;
            return WRITE_TRAN_CONTINUE;
        }

        if (!tls_setup_handshake(s)) {

            return WRITE_TRAN_ERROR;
        }


    case 141:

        return WRITE_TRAN_FINISHED;

    case 132:
        st->hand_state = 140;
        return WRITE_TRAN_CONTINUE;

    case 139:
        if (SSL_IS_DTLS(s) && !s->d1->cookie_verified
            && (SSL_get_options(s) & SSL_OP_COOKIE_EXCHANGE)) {
            st->hand_state = 142;
        } else if (s->renegotiate == 0 && !SSL_IS_FIRST_HANDSHAKE(s)) {

            st->hand_state = 140;
            return WRITE_TRAN_CONTINUE;
        } else {
            st->hand_state = 128;
        }
        return WRITE_TRAN_CONTINUE;

    case 142:
        return WRITE_TRAN_FINISHED;

    case 128:
        if (s->hit) {
            if (s->ext.ticket_expected)
                st->hand_state = 130;
            else
                st->hand_state = 134;
        } else {


            if (!(s->s3.tmp.new_cipher->algorithm_auth &
                  (SSL_aNULL | SSL_aSRP | SSL_aPSK))) {
                st->hand_state = 137;
            } else if (send_server_key_exchange(s)) {
                st->hand_state = 131;
            } else if (send_certificate_request(s)) {
                st->hand_state = 136;
            } else {
                st->hand_state = 129;
            }
        }
        return WRITE_TRAN_CONTINUE;

    case 137:
        if (s->ext.status_expected) {
            st->hand_state = 135;
            return WRITE_TRAN_CONTINUE;
        }


    case 135:
        if (send_server_key_exchange(s)) {
            st->hand_state = 131;
            return WRITE_TRAN_CONTINUE;
        }


    case 131:
        if (send_certificate_request(s)) {
            st->hand_state = 136;
            return WRITE_TRAN_CONTINUE;
        }


    case 136:
        st->hand_state = 129;
        return WRITE_TRAN_CONTINUE;

    case 129:
        return WRITE_TRAN_FINISHED;

    case 138:
        if (s->hit) {
            st->hand_state = 140;
            return WRITE_TRAN_CONTINUE;
        } else if (s->ext.ticket_expected) {
            st->hand_state = 130;
        } else {
            st->hand_state = 134;
        }
        return WRITE_TRAN_CONTINUE;

    case 130:
        st->hand_state = 134;
        return WRITE_TRAN_CONTINUE;

    case 134:
        st->hand_state = 133;
        return WRITE_TRAN_CONTINUE;

    case 133:
        if (s->hit) {
            return WRITE_TRAN_FINISHED;
        }
        st->hand_state = 140;
        return WRITE_TRAN_CONTINUE;
    }
}
