
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int early_data; int early_data_ok; } ;
struct TYPE_8__ {scalar_t__ max_early_data; scalar_t__ early_data_state; scalar_t__ hello_retry_request; TYPE_1__ ext; int allow_early_data_cb_data; int (* allow_early_data_cb ) (TYPE_2__*,int ) ;int hit; int server; } ;
typedef TYPE_2__ SSL ;


 int SSL3_CC_EARLY ;
 int SSL3_CHANGE_CIPHER_SERVER_READ ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_EARLY_DATA_ACCEPTED ;
 scalar_t__ SSL_EARLY_DATA_ACCEPTING ;
 int SSL_EARLY_DATA_REJECTED ;
 unsigned int SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS ;
 int SSL_F_FINAL_EARLY_DATA ;
 scalar_t__ SSL_HRR_NONE ;
 int SSL_R_BAD_EARLY_DATA ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ) ;
 int tls13_change_cipher_state (TYPE_2__*,int) ;

__attribute__((used)) static int final_early_data(SSL *s, unsigned int context, int sent)
{
    if (!sent)
        return 1;

    if (!s->server) {
        if (context == SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS
                && sent
                && !s->ext.early_data_ok) {





            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_FINAL_EARLY_DATA,
                     SSL_R_BAD_EARLY_DATA);
            return 0;
        }

        return 1;
    }

    if (s->max_early_data == 0
            || !s->hit
            || s->early_data_state != SSL_EARLY_DATA_ACCEPTING
            || !s->ext.early_data_ok
            || s->hello_retry_request != SSL_HRR_NONE
            || (s->allow_early_data_cb != ((void*)0)
                && !s->allow_early_data_cb(s,
                                         s->allow_early_data_cb_data))) {
        s->ext.early_data = SSL_EARLY_DATA_REJECTED;
    } else {
        s->ext.early_data = SSL_EARLY_DATA_ACCEPTED;

        if (!tls13_change_cipher_state(s,
                    SSL3_CC_EARLY | SSL3_CHANGE_CIPHER_SERVER_READ)) {

            return 0;
        }
    }

    return 1;
}
