
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int server; TYPE_1__* cert; } ;
struct TYPE_5__ {size_t client_sigalgslen; size_t conf_sigalgslen; int * conf_sigalgs; int * client_sigalgs; } ;
typedef TYPE_2__ SSL ;


 size_t OSSL_NELEM (int *) ;



 int * suiteb_sigalgs ;
 int * tls12_sigalgs ;
 int tls1_suiteb (TYPE_2__*) ;

size_t tls12_get_psigalgs(SSL *s, int sent, const uint16_t **psigs)
{





    switch (tls1_suiteb(s)) {
    case 130:
        *psigs = suiteb_sigalgs;
        return OSSL_NELEM(suiteb_sigalgs);

    case 129:
        *psigs = suiteb_sigalgs;
        return 1;

    case 128:
        *psigs = suiteb_sigalgs + 1;
        return 1;
    }






    if ((s->server == sent) && s->cert->client_sigalgs != ((void*)0)) {
        *psigs = s->cert->client_sigalgs;
        return s->cert->client_sigalgslen;
    } else if (s->cert->conf_sigalgs) {
        *psigs = s->cert->conf_sigalgs;
        return s->cert->conf_sigalgslen;
    } else {
        *psigs = tls12_sigalgs;
        return OSSL_NELEM(tls12_sigalgs);
    }
}
