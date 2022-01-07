
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int session_ticket_do_not_call; } ;
typedef int SSL ;
typedef int HMAC_CTX ;
typedef TYPE_1__ HANDSHAKE_EX_DATA ;
typedef int EVP_CIPHER_CTX ;


 scalar_t__ SSL_get_ex_data (int *,int ) ;
 int ex_data_idx ;

__attribute__((used)) static int do_not_call_session_ticket_cb(SSL *s, unsigned char *key_name,
                                         unsigned char *iv,
                                         EVP_CIPHER_CTX *ctx,
                                         HMAC_CTX *hctx, int enc)
{
    HANDSHAKE_EX_DATA *ex_data =
        (HANDSHAKE_EX_DATA*)(SSL_get_ex_data(s, ex_data_idx));
    ex_data->session_ticket_do_not_call = 1;
    return 0;
}
