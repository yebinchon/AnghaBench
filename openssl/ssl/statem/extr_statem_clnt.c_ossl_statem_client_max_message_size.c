
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hand_state; } ;
struct TYPE_4__ {size_t max_cert_list; int version; TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 size_t CCS_MAX_LENGTH ;
 int DTLS1_BAD_VER ;

 size_t ENCRYPTED_EXTENSIONS_MAX_LENGTH ;
 size_t FINISHED_MAX_LENGTH ;
 size_t HELLO_VERIFY_REQUEST_MAX_LENGTH ;
 size_t KEY_UPDATE_MAX_LENGTH ;
 size_t SERVER_HELLO_DONE_MAX_LENGTH ;
 size_t SERVER_HELLO_MAX_LENGTH ;
 size_t SERVER_KEY_EXCH_MAX_LENGTH ;
 size_t SSL3_RT_MAX_PLAIN_LENGTH ;
size_t ossl_statem_client_max_message_size(SSL *s)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:

        return 0;

    case 128:
        return SERVER_HELLO_MAX_LENGTH;

    case 140:
        return HELLO_VERIFY_REQUEST_MAX_LENGTH;

    case 139:
        return s->max_cert_list;

    case 136:
        return SSL3_RT_MAX_PLAIN_LENGTH;

    case 137:
        return SSL3_RT_MAX_PLAIN_LENGTH;

    case 132:
        return SERVER_KEY_EXCH_MAX_LENGTH;

    case 138:





        return s->max_cert_list;

    case 129:
        return SERVER_HELLO_DONE_MAX_LENGTH;

    case 135:
        if (s->version == DTLS1_BAD_VER)
            return 3;
        return CCS_MAX_LENGTH;

    case 130:
        return SSL3_RT_MAX_PLAIN_LENGTH;

    case 133:
        return FINISHED_MAX_LENGTH;

    case 134:
        return ENCRYPTED_EXTENSIONS_MAX_LENGTH;

    case 131:
        return KEY_UPDATE_MAX_LENGTH;
    }
}
