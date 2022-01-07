
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_12__ {size_t client_sigalgslen; size_t conf_sigalgslen; int * conf_sigalgs; int * client_sigalgs; } ;
struct TYPE_9__ {size_t peer_sigalgslen; int * peer_sigalgs; } ;
struct TYPE_10__ {TYPE_1__ tmp; } ;
struct TYPE_11__ {size_t shared_sigalgslen; int options; int const** shared_sigalgs; TYPE_2__ s3; int server; TYPE_4__* cert; } ;
typedef TYPE_3__ SSL ;
typedef int SIGALG_LOOKUP ;
typedef TYPE_4__ CERT ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int const**) ;
 int ** OPENSSL_malloc (size_t) ;
 int SSL_F_TLS1_SET_SHARED_SIGALGS ;
 int SSL_OP_CIPHER_SERVER_PREFERENCE ;
 int SSLerr (int ,int ) ;
 size_t tls12_get_psigalgs (TYPE_3__*,int ,int const**) ;
 size_t tls12_shared_sigalgs (TYPE_3__*,int const**,int const*,size_t,int const*,size_t) ;
 unsigned int tls1_suiteb (TYPE_3__*) ;

__attribute__((used)) static int tls1_set_shared_sigalgs(SSL *s)
{
    const uint16_t *pref, *allow, *conf;
    size_t preflen, allowlen, conflen;
    size_t nmatch;
    const SIGALG_LOOKUP **salgs = ((void*)0);
    CERT *c = s->cert;
    unsigned int is_suiteb = tls1_suiteb(s);

    OPENSSL_free(s->shared_sigalgs);
    s->shared_sigalgs = ((void*)0);
    s->shared_sigalgslen = 0;

    if (!s->server && c->client_sigalgs && !is_suiteb) {
        conf = c->client_sigalgs;
        conflen = c->client_sigalgslen;
    } else if (c->conf_sigalgs && !is_suiteb) {
        conf = c->conf_sigalgs;
        conflen = c->conf_sigalgslen;
    } else
        conflen = tls12_get_psigalgs(s, 0, &conf);
    if (s->options & SSL_OP_CIPHER_SERVER_PREFERENCE || is_suiteb) {
        pref = conf;
        preflen = conflen;
        allow = s->s3.tmp.peer_sigalgs;
        allowlen = s->s3.tmp.peer_sigalgslen;
    } else {
        allow = conf;
        allowlen = conflen;
        pref = s->s3.tmp.peer_sigalgs;
        preflen = s->s3.tmp.peer_sigalgslen;
    }
    nmatch = tls12_shared_sigalgs(s, ((void*)0), pref, preflen, allow, allowlen);
    if (nmatch) {
        if ((salgs = OPENSSL_malloc(nmatch * sizeof(*salgs))) == ((void*)0)) {
            SSLerr(SSL_F_TLS1_SET_SHARED_SIGALGS, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        nmatch = tls12_shared_sigalgs(s, salgs, pref, preflen, allow, allowlen);
    } else {
        salgs = ((void*)0);
    }
    s->shared_sigalgs = salgs;
    s->shared_sigalgslen = nmatch;
    return 1;
}
