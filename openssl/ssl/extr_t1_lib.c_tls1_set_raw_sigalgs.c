
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {size_t client_sigalgslen; size_t conf_sigalgslen; int * conf_sigalgs; int * client_sigalgs; } ;
typedef TYPE_1__ CERT ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (size_t) ;
 int SSL_F_TLS1_SET_RAW_SIGALGS ;
 int SSLerr (int ,int ) ;
 int memcpy (int *,int const*,size_t) ;

int tls1_set_raw_sigalgs(CERT *c, const uint16_t *psigs, size_t salglen,
                     int client)
{
    uint16_t *sigalgs;

    if ((sigalgs = OPENSSL_malloc(salglen * sizeof(*sigalgs))) == ((void*)0)) {
        SSLerr(SSL_F_TLS1_SET_RAW_SIGALGS, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    memcpy(sigalgs, psigs, salglen * sizeof(*sigalgs));

    if (client) {
        OPENSSL_free(c->client_sigalgs);
        c->client_sigalgs = sigalgs;
        c->client_sigalgslen = salglen;
    } else {
        OPENSSL_free(c->conf_sigalgs);
        c->conf_sigalgs = sigalgs;
        c->conf_sigalgslen = salglen;
    }

    return 1;
}
