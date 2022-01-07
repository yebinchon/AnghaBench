
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int sig_idx; } ;
struct TYPE_6__ {int amask; } ;
typedef TYPE_1__ SSL_CERT_LOOKUP ;
typedef int SSL ;
typedef TYPE_2__ SIGALG_LOOKUP ;


 int SSL_aDSS ;
 int SSL_aECDSA ;
 int SSL_aRSA ;
 TYPE_1__* ssl_cert_lookup_by_idx (int ) ;
 size_t tls12_get_psigalgs (int *,int,int const**) ;
 scalar_t__ tls12_sigalg_allowed (int *,int,TYPE_2__ const*) ;
 TYPE_2__* tls1_lookup_sigalg (int const) ;

void ssl_set_sig_mask(uint32_t *pmask_a, SSL *s, int op)
{
    const uint16_t *sigalgs;
    size_t i, sigalgslen;
    uint32_t disabled_mask = SSL_aRSA | SSL_aDSS | SSL_aECDSA;




    sigalgslen = tls12_get_psigalgs(s, 1, &sigalgs);
    for (i = 0; i < sigalgslen; i++, sigalgs++) {
        const SIGALG_LOOKUP *lu = tls1_lookup_sigalg(*sigalgs);
        const SSL_CERT_LOOKUP *clu;

        if (lu == ((void*)0))
            continue;

        clu = ssl_cert_lookup_by_idx(lu->sig_idx);
        if (clu == ((void*)0))
                continue;


        if ((clu->amask & disabled_mask) != 0
                && tls12_sigalg_allowed(s, op, lu))
            disabled_mask &= ~clu->amask;
    }
    *pmask_a |= disabled_mask;
}
