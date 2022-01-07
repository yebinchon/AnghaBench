
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int const* peer_sigalg; } ;
struct TYPE_7__ {TYPE_1__ tmp; } ;
struct TYPE_8__ {TYPE_2__ s3; } ;
typedef TYPE_3__ SSL ;
typedef int SIGALG_LOOKUP ;
typedef int EVP_PKEY ;


 int * ssl_cert_lookup_by_pkey (int const*,size_t*) ;
 int * tls1_get_legacy_sigalg (TYPE_3__*,size_t) ;

int tls1_set_peer_legacy_sigalg(SSL *s, const EVP_PKEY *pkey)
{
    size_t idx;
    const SIGALG_LOOKUP *lu;

    if (ssl_cert_lookup_by_pkey(pkey, &idx) == ((void*)0))
        return 0;
    lu = tls1_get_legacy_sigalg(s, idx);
    if (lu == ((void*)0))
        return 0;
    s->s3.tmp.peer_sigalg = lu;
    return 1;
}
