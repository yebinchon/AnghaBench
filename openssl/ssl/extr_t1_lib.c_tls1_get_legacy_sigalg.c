
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* new_cipher; } ;
struct TYPE_13__ {TYPE_2__ tmp; } ;
struct TYPE_17__ {TYPE_5__* cert; TYPE_3__ s3; scalar_t__ server; } ;
struct TYPE_16__ {int amask; } ;
struct TYPE_15__ {TYPE_4__* pkeys; TYPE_4__* key; } ;
struct TYPE_14__ {int * privatekey; } ;
struct TYPE_11__ {int algorithm_auth; } ;
typedef TYPE_6__ SSL_CERT_LOOKUP ;
typedef TYPE_7__ SSL ;
typedef int SIGALG_LOOKUP ;


 scalar_t__ OSSL_NELEM (int *) ;
 int SSL_PKEY_GOST01 ;
 int SSL_PKEY_GOST12_512 ;
 size_t SSL_PKEY_NUM ;
 int SSL_PKEY_RSA ;
 scalar_t__ SSL_USE_SIGALGS (TYPE_7__ const*) ;
 scalar_t__ SSL_aGOST01 ;
 int const legacy_rsa_sigalg ;
 TYPE_6__* ssl_cert_lookup_by_idx (size_t) ;
 int tls1_lookup_md (int const*,int *) ;
 int * tls1_lookup_sigalg (int ) ;
 int * tls_default_sigalg ;

__attribute__((used)) static const SIGALG_LOOKUP *tls1_get_legacy_sigalg(const SSL *s, int idx)
{
    if (idx == -1) {
        if (s->server) {
            size_t i;


            for (i = 0; i < SSL_PKEY_NUM; i++) {
                const SSL_CERT_LOOKUP *clu = ssl_cert_lookup_by_idx(i);

                if (clu->amask & s->s3.tmp.new_cipher->algorithm_auth) {
                    idx = i;
                    break;
                }
            }




            if (idx == SSL_PKEY_GOST01 && s->s3.tmp.new_cipher->algorithm_auth != SSL_aGOST01) {
                int real_idx;

                for (real_idx = SSL_PKEY_GOST12_512; real_idx >= SSL_PKEY_GOST01;
                     real_idx--) {
                    if (s->cert->pkeys[real_idx].privatekey != ((void*)0)) {
                        idx = real_idx;
                        break;
                    }
                }
            }
        } else {
            idx = s->cert->key - s->cert->pkeys;
        }
    }
    if (idx < 0 || idx >= (int)OSSL_NELEM(tls_default_sigalg))
        return ((void*)0);
    if (SSL_USE_SIGALGS(s) || idx != SSL_PKEY_RSA) {
        const SIGALG_LOOKUP *lu = tls1_lookup_sigalg(tls_default_sigalg[idx]);

        if (!tls1_lookup_md(lu, ((void*)0)))
            return ((void*)0);
        return lu;
    }
    return &legacy_rsa_sigalg;
}
