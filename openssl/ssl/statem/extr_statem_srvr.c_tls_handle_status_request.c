
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {int resp; } ;
struct TYPE_18__ {int status_expected; scalar_t__ status_type; TYPE_6__ ocsp; } ;
struct TYPE_13__ {int * cert; } ;
struct TYPE_14__ {TYPE_2__ tmp; } ;
struct TYPE_19__ {TYPE_7__ ext; TYPE_5__* ctx; TYPE_3__ s3; TYPE_1__* cert; } ;
struct TYPE_15__ {int (* status_cb ) (TYPE_8__*,int ) ;int status_arg; } ;
struct TYPE_16__ {TYPE_4__ ext; } ;
struct TYPE_12__ {int * key; } ;
typedef TYPE_8__ SSL ;


 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_HANDLE_STATUS_REQUEST ;
 int SSL_R_CLIENTHELLO_TLSEXT ;



 int SSLfatal (TYPE_8__*,int ,int ,int ) ;
 scalar_t__ TLSEXT_STATUSTYPE_nothing ;
 int stub1 (TYPE_8__*,int ) ;

__attribute__((used)) static int tls_handle_status_request(SSL *s)
{
    s->ext.status_expected = 0;







    if (s->ext.status_type != TLSEXT_STATUSTYPE_nothing && s->ctx != ((void*)0)
            && s->ctx->ext.status_cb != ((void*)0)) {
        int ret;


        if (s->s3.tmp.cert != ((void*)0)) {




            s->cert->key = s->s3.tmp.cert;
            ret = s->ctx->ext.status_cb(s, s->ctx->ext.status_arg);
            switch (ret) {

            case 129:
                s->ext.status_expected = 0;
                break;

            case 128:
                if (s->ext.ocsp.resp)
                    s->ext.status_expected = 1;
                break;

            case 130:
            default:
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_HANDLE_STATUS_REQUEST,
                         SSL_R_CLIENTHELLO_TLSEXT);
                return 0;
            }
        }
    }

    return 1;
}
