
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ status_type; } ;
struct TYPE_13__ {int verify_mode; int * ct_validation_callback; TYPE_3__* ctx; TYPE_1__ ext; } ;
struct TYPE_11__ {int (* status_cb ) (TYPE_4__*,int ) ;int status_arg; } ;
struct TYPE_12__ {TYPE_2__ ext; } ;
typedef TYPE_4__ SSL ;


 int ERR_R_MALLOC_FAILURE ;
 int SSL_AD_BAD_CERTIFICATE_STATUS_RESPONSE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT ;
 int SSL_R_INVALID_STATUS_RESPONSE ;
 int SSL_VERIFY_PEER ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 scalar_t__ TLSEXT_STATUSTYPE_nothing ;
 int ssl3_check_cert_and_algorithm (TYPE_4__*) ;
 int ssl_validate_ct (TYPE_4__*) ;
 int stub1 (TYPE_4__*,int ) ;

int tls_process_initial_server_flight(SSL *s)
{




    if (!ssl3_check_cert_and_algorithm(s)) {

        return 0;
    }






    if (s->ext.status_type != TLSEXT_STATUSTYPE_nothing
            && s->ctx->ext.status_cb != ((void*)0)) {
        int ret = s->ctx->ext.status_cb(s, s->ctx->ext.status_arg);

        if (ret == 0) {
            SSLfatal(s, SSL_AD_BAD_CERTIFICATE_STATUS_RESPONSE,
                     SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT,
                     SSL_R_INVALID_STATUS_RESPONSE);
            return 0;
        }
        if (ret < 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT,
                     ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }

    if (s->ct_validation_callback != ((void*)0)) {

        if (!ssl_validate_ct(s) && (s->verify_mode & SSL_VERIFY_PEER)) {

            return 0;
        }
    }


    return 1;
}
