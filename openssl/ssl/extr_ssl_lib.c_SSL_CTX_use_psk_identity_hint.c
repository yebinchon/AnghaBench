
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cert; } ;
struct TYPE_4__ {int * psk_identity_hint; } ;
typedef TYPE_2__ SSL_CTX ;


 int OPENSSL_free (int *) ;
 int * OPENSSL_strdup (char const*) ;
 scalar_t__ PSK_MAX_IDENTITY_LEN ;
 int SSL_F_SSL_CTX_USE_PSK_IDENTITY_HINT ;
 int SSL_R_DATA_LENGTH_TOO_LONG ;
 int SSLerr (int ,int ) ;
 scalar_t__ strlen (char const*) ;

int SSL_CTX_use_psk_identity_hint(SSL_CTX *ctx, const char *identity_hint)
{
    if (identity_hint != ((void*)0) && strlen(identity_hint) > PSK_MAX_IDENTITY_LEN) {
        SSLerr(SSL_F_SSL_CTX_USE_PSK_IDENTITY_HINT, SSL_R_DATA_LENGTH_TOO_LONG);
        return 0;
    }
    OPENSSL_free(ctx->cert->psk_identity_hint);
    if (identity_hint != ((void*)0)) {
        ctx->cert->psk_identity_hint = OPENSSL_strdup(identity_hint);
        if (ctx->cert->psk_identity_hint == ((void*)0))
            return 0;
    } else
        ctx->cert->psk_identity_hint = ((void*)0);
    return 1;
}
