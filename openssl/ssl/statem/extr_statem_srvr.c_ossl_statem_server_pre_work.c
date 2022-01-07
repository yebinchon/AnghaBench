
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int WORK_STATE ;
struct TYPE_22__ {int hand_state; int use_timer; } ;
struct TYPE_17__ {int new_cipher; } ;
struct TYPE_20__ {int flags; TYPE_2__ tmp; } ;
struct TYPE_21__ {TYPE_5__ s3; int early_data_state; TYPE_4__* method; TYPE_1__* session; int sent_tickets; int shutdown; TYPE_7__ statem; } ;
struct TYPE_19__ {TYPE_3__* ssl3_enc; } ;
struct TYPE_18__ {int (* setup_key_block ) (TYPE_6__*) ;} ;
struct TYPE_16__ {int cipher; } ;
typedef TYPE_6__ SSL ;
typedef TYPE_7__ OSSL_STATEM ;


 int BIO_dgram_is_sctp (int ) ;

 int SSL_EARLY_DATA_ACCEPTING ;
 int SSL_IS_DTLS (TYPE_6__*) ;
 int SSL_IS_TLS13 (TYPE_6__*) ;
 int SSL_get_wbio (TYPE_6__*) ;
 int TLS1_FLAGS_STATELESS ;







 int WORK_ERROR ;
 int WORK_FINISHED_CONTINUE ;
 int dtls1_clear_sent_buffer (TYPE_6__*) ;
 int dtls_wait_for_dry (TYPE_6__*) ;
 int stub1 (TYPE_6__*) ;
 int tls_finish_handshake (TYPE_6__*,int ,int,int) ;

WORK_STATE ossl_statem_server_pre_work(SSL *s, WORK_STATE wst)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        break;

    case 131:
        s->shutdown = 0;
        if (SSL_IS_DTLS(s))
            dtls1_clear_sent_buffer(s);
        break;

    case 135:
        s->shutdown = 0;
        if (SSL_IS_DTLS(s)) {
            dtls1_clear_sent_buffer(s);

            st->use_timer = 0;
        }
        break;

    case 128:
        if (SSL_IS_DTLS(s)) {




            st->use_timer = 1;
        }
        break;

    case 129:

        if (SSL_IS_DTLS(s) && BIO_dgram_is_sctp(SSL_get_wbio(s))) {

            return dtls_wait_for_dry(s);
        }

        return WORK_FINISHED_CONTINUE;

    case 130:
        if (SSL_IS_TLS13(s) && s->sent_tickets == 0) {







            return tls_finish_handshake(s, wst, 0, 0);
        } if (SSL_IS_DTLS(s)) {




            st->use_timer = 0;
        }
        break;

    case 132:
        if (SSL_IS_TLS13(s))
            break;
        s->session->cipher = s->s3.tmp.new_cipher;
        if (!s->method->ssl3_enc->setup_key_block(s)) {

            return WORK_ERROR;
        }
        if (SSL_IS_DTLS(s)) {






            st->use_timer = 0;
        }
        return WORK_FINISHED_CONTINUE;

    case 134:
        if (s->early_data_state != SSL_EARLY_DATA_ACCEPTING
                && (s->s3.flags & TLS1_FLAGS_STATELESS) == 0)
            return WORK_FINISHED_CONTINUE;


    case 133:

        return tls_finish_handshake(s, wst, 1, 1);
    }

    return WORK_FINISHED_CONTINUE;
}
