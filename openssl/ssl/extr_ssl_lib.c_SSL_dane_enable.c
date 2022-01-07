
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * hostname; } ;
struct TYPE_11__ {int mdpth; int pdpth; int * trecs; TYPE_2__* dctx; } ;
struct TYPE_12__ {TYPE_3__* ctx; int param; TYPE_1__ ext; TYPE_4__ dane; } ;
struct TYPE_9__ {scalar_t__ mdmax; } ;
struct TYPE_10__ {TYPE_2__ dane; } ;
typedef TYPE_4__ SSL_DANE ;
typedef TYPE_5__ SSL ;


 int ERR_R_MALLOC_FAILURE ;
 int SSL_F_SSL_DANE_ENABLE ;
 int SSL_R_CONTEXT_NOT_DANE_ENABLED ;
 int SSL_R_DANE_ALREADY_ENABLED ;
 int SSL_R_ERROR_SETTING_TLSA_BASE_DOMAIN ;
 int SSL_set_tlsext_host_name (TYPE_5__*,char const*) ;
 int SSLerr (int ,int ) ;
 int X509_VERIFY_PARAM_set1_host (int ,char const*,int ) ;
 int * sk_danetls_record_new_null () ;

int SSL_dane_enable(SSL *s, const char *basedomain)
{
    SSL_DANE *dane = &s->dane;

    if (s->ctx->dane.mdmax == 0) {
        SSLerr(SSL_F_SSL_DANE_ENABLE, SSL_R_CONTEXT_NOT_DANE_ENABLED);
        return 0;
    }
    if (dane->trecs != ((void*)0)) {
        SSLerr(SSL_F_SSL_DANE_ENABLE, SSL_R_DANE_ALREADY_ENABLED);
        return 0;
    }






    if (s->ext.hostname == ((void*)0)) {
        if (!SSL_set_tlsext_host_name(s, basedomain)) {
            SSLerr(SSL_F_SSL_DANE_ENABLE, SSL_R_ERROR_SETTING_TLSA_BASE_DOMAIN);
            return -1;
        }
    }


    if (!X509_VERIFY_PARAM_set1_host(s->param, basedomain, 0)) {
        SSLerr(SSL_F_SSL_DANE_ENABLE, SSL_R_ERROR_SETTING_TLSA_BASE_DOMAIN);
        return -1;
    }

    dane->mdpth = -1;
    dane->pdpth = -1;
    dane->dctx = &s->ctx->dane;
    dane->trecs = sk_danetls_record_new_null();

    if (dane->trecs == ((void*)0)) {
        SSLerr(SSL_F_SSL_DANE_ENABLE, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    return 1;
}
