
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int mdpth; int pdpth; int * mtlsa; int * mcert; } ;
struct TYPE_15__ {int rlayer; TYPE_3__* method; TYPE_2__* ctx; scalar_t__ shared_sigalgslen; int * shared_sigalgs; int param; TYPE_1__ dane; int * pha_dgst; int key_update; scalar_t__ first_packet; int * init_buf; int rwstate; int version; int client_version; scalar_t__ renegotiate; scalar_t__ shutdown; scalar_t__ hit; scalar_t__ error; scalar_t__ sent_tickets; scalar_t__ hello_retry_request; scalar_t__ psksession_id_len; int * psksession_id; int * psksession; int * session; } ;
struct TYPE_14__ {int (* ssl_clear ) (TYPE_4__*) ;int (* ssl_new ) (TYPE_4__*) ;int (* ssl_free ) (TYPE_4__*) ;int version; } ;
struct TYPE_13__ {TYPE_3__* method; } ;
typedef TYPE_4__ SSL ;


 int BUF_MEM_free (int *) ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_MD_CTX_free (int *) ;
 int OPENSSL_free (int *) ;
 int RECORD_LAYER_clear (int *) ;
 int SSL_F_SSL_CLEAR ;
 int SSL_KEY_UPDATE_NONE ;
 int SSL_NOTHING ;
 int SSL_R_NO_METHOD_SPECIFIED ;
 int SSL_SESSION_free (int *) ;
 int SSLerr (int ,int ) ;
 int X509_VERIFY_PARAM_move_peername (int ,int *) ;
 int X509_free (int *) ;
 int clear_ciphers (TYPE_4__*) ;
 int ossl_statem_clear (TYPE_4__*) ;
 scalar_t__ ssl_clear_bad_session (TYPE_4__*) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;

int SSL_clear(SSL *s)
{
    if (s->method == ((void*)0)) {
        SSLerr(SSL_F_SSL_CLEAR, SSL_R_NO_METHOD_SPECIFIED);
        return 0;
    }

    if (ssl_clear_bad_session(s)) {
        SSL_SESSION_free(s->session);
        s->session = ((void*)0);
    }
    SSL_SESSION_free(s->psksession);
    s->psksession = ((void*)0);
    OPENSSL_free(s->psksession_id);
    s->psksession_id = ((void*)0);
    s->psksession_id_len = 0;
    s->hello_retry_request = 0;
    s->sent_tickets = 0;

    s->error = 0;
    s->hit = 0;
    s->shutdown = 0;

    if (s->renegotiate) {
        SSLerr(SSL_F_SSL_CLEAR, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    ossl_statem_clear(s);

    s->version = s->method->version;
    s->client_version = s->version;
    s->rwstate = SSL_NOTHING;

    BUF_MEM_free(s->init_buf);
    s->init_buf = ((void*)0);
    clear_ciphers(s);
    s->first_packet = 0;

    s->key_update = SSL_KEY_UPDATE_NONE;

    EVP_MD_CTX_free(s->pha_dgst);
    s->pha_dgst = ((void*)0);


    s->dane.mdpth = -1;
    s->dane.pdpth = -1;
    X509_free(s->dane.mcert);
    s->dane.mcert = ((void*)0);
    s->dane.mtlsa = ((void*)0);


    X509_VERIFY_PARAM_move_peername(s->param, ((void*)0));


    OPENSSL_free(s->shared_sigalgs);
    s->shared_sigalgs = ((void*)0);
    s->shared_sigalgslen = 0;





    if (s->method != s->ctx->method) {
        s->method->ssl_free(s);
        s->method = s->ctx->method;
        if (!s->method->ssl_new(s))
            return 0;
    } else {
        if (!s->method->ssl_clear(s))
            return 0;
    }

    RECORD_LAYER_clear(&s->rlayer);

    return 1;
}
