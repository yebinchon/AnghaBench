
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* cipher; int client_ca_names; int server_ca_names; struct TYPE_4__* result_session_ticket_app_data; struct TYPE_4__* server_alpn_negotiated; struct TYPE_4__* client_alpn_negotiated; struct TYPE_4__* server_npn_negotiated; struct TYPE_4__* client_npn_negotiated; } ;
typedef TYPE_1__ HANDSHAKE_RESULT ;


 int OPENSSL_free (TYPE_1__*) ;
 int X509_NAME_free ;
 int sk_X509_NAME_pop_free (int ,int ) ;

void HANDSHAKE_RESULT_free(HANDSHAKE_RESULT *result)
{
    if (result == ((void*)0))
        return;
    OPENSSL_free(result->client_npn_negotiated);
    OPENSSL_free(result->server_npn_negotiated);
    OPENSSL_free(result->client_alpn_negotiated);
    OPENSSL_free(result->server_alpn_negotiated);
    OPENSSL_free(result->result_session_ticket_app_data);
    sk_X509_NAME_pop_free(result->server_ca_names, X509_NAME_free);
    sk_X509_NAME_pop_free(result->client_ca_names, X509_NAME_free);
    OPENSSL_free(result->cipher);
    OPENSSL_free(result);
}
