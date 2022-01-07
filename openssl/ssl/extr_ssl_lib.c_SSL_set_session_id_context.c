
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int sid_ctx_length; int sid_ctx; } ;
typedef TYPE_1__ SSL ;


 int SSL_F_SSL_SET_SESSION_ID_CONTEXT ;
 unsigned int SSL_MAX_SID_CTX_LENGTH ;
 int SSL_R_SSL_SESSION_ID_CONTEXT_TOO_LONG ;
 int SSLerr (int ,int ) ;
 int memcpy (int ,unsigned char const*,unsigned int) ;

int SSL_set_session_id_context(SSL *ssl, const unsigned char *sid_ctx,
                               unsigned int sid_ctx_len)
{
    if (sid_ctx_len > SSL_MAX_SID_CTX_LENGTH) {
        SSLerr(SSL_F_SSL_SET_SESSION_ID_CONTEXT,
               SSL_R_SSL_SESSION_ID_CONTEXT_TOO_LONG);
        return 0;
    }
    ssl->sid_ctx_length = sid_ctx_len;
    memcpy(ssl->sid_ctx, sid_ctx, sid_ctx_len);

    return 1;
}
