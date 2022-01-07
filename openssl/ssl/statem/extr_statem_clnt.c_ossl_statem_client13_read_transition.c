
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hand_state; } ;
struct TYPE_6__ {int post_handshake_auth; int hit; TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 int SSL3_MT_CERTIFICATE ;
 int SSL3_MT_CERTIFICATE_REQUEST ;
 int SSL3_MT_CERTIFICATE_VERIFY ;
 int SSL3_MT_ENCRYPTED_EXTENSIONS ;
 int SSL3_MT_FINISHED ;
 int SSL3_MT_KEY_UPDATE ;
 int SSL3_MT_NEWSESSION_TICKET ;
 int SSL3_MT_SERVER_HELLO ;
 int SSL_IS_DTLS (TYPE_1__*) ;
 int SSL_PHA_EXT_SENT ;
 int SSL_PHA_REQUESTED ;




 void* TLS_ST_CR_FINISHED ;
 int TLS_ST_CR_KEY_UPDATE ;
 int TLS_ST_CR_SESSION_TICKET ;



 int tls13_restore_handshake_digest_for_pha (TYPE_1__*) ;

__attribute__((used)) static int ossl_statem_client13_read_transition(SSL *s, int mt)
{
    OSSL_STATEM *st = &s->statem;







    switch (st->hand_state) {
    default:
        break;

    case 129:




        if (mt == SSL3_MT_SERVER_HELLO) {
            st->hand_state = 130;
            return 1;
        }
        break;

    case 130:
        if (mt == SSL3_MT_ENCRYPTED_EXTENSIONS) {
            st->hand_state = 131;
            return 1;
        }
        break;

    case 131:
        if (s->hit) {
            if (mt == SSL3_MT_FINISHED) {
                st->hand_state = TLS_ST_CR_FINISHED;
                return 1;
            }
        } else {
            if (mt == SSL3_MT_CERTIFICATE_REQUEST) {
                st->hand_state = 133;
                return 1;
            }
            if (mt == SSL3_MT_CERTIFICATE) {
                st->hand_state = 134;
                return 1;
            }
        }
        break;

    case 133:
        if (mt == SSL3_MT_CERTIFICATE) {
            st->hand_state = 134;
            return 1;
        }
        break;

    case 134:
        if (mt == SSL3_MT_CERTIFICATE_VERIFY) {
            st->hand_state = 132;
            return 1;
        }
        break;

    case 132:
        if (mt == SSL3_MT_FINISHED) {
            st->hand_state = TLS_ST_CR_FINISHED;
            return 1;
        }
        break;

    case 128:
        if (mt == SSL3_MT_NEWSESSION_TICKET) {
            st->hand_state = TLS_ST_CR_SESSION_TICKET;
            return 1;
        }
        if (mt == SSL3_MT_KEY_UPDATE) {
            st->hand_state = TLS_ST_CR_KEY_UPDATE;
            return 1;
        }
        if (mt == SSL3_MT_CERTIFICATE_REQUEST) {



            if (!SSL_IS_DTLS(s) && s->post_handshake_auth == SSL_PHA_EXT_SENT) {
                s->post_handshake_auth = SSL_PHA_REQUESTED;






                if (!tls13_restore_handshake_digest_for_pha(s)) {

                    return 0;
                }
                st->hand_state = 133;
                return 1;
            }
        }
        break;
    }


    return 0;
}
