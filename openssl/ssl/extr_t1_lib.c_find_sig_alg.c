
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_16__ {scalar_t__ hash; scalar_t__ sig; size_t sig_idx; int curve; } ;
struct TYPE_15__ {size_t shared_sigalgslen; TYPE_2__* cert; TYPE_4__** shared_sigalgs; } ;
struct TYPE_14__ {TYPE_1__* pkeys; } ;
struct TYPE_13__ {int * privatekey; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ SIGALG_LOOKUP ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_GROUP_get_curve_name (int ) ;
 int EC_KEY_get0_group (int *) ;
 scalar_t__ EVP_PKEY_DSA ;
 scalar_t__ EVP_PKEY_EC ;
 scalar_t__ EVP_PKEY_RSA ;
 scalar_t__ EVP_PKEY_RSA_PSS ;
 int EVP_PKEY_get0 (int *) ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 scalar_t__ NID_sha1 ;
 scalar_t__ NID_sha224 ;
 int NID_undef ;
 int has_usable_cert (TYPE_3__*,TYPE_4__ const*,int) ;
 int is_cert_usable (TYPE_3__*,TYPE_4__ const*,int *,int *) ;
 int rsa_pss_check_min_key_size (int ,TYPE_4__ const*) ;
 int tls1_lookup_md (TYPE_4__ const*,int *) ;

__attribute__((used)) static const SIGALG_LOOKUP *find_sig_alg(SSL *s, X509 *x, EVP_PKEY *pkey)
{
    const SIGALG_LOOKUP *lu = ((void*)0);
    size_t i;

    int curve = -1;

    EVP_PKEY *tmppkey;


    for (i = 0; i < s->shared_sigalgslen; i++) {
        lu = s->shared_sigalgs[i];


        if (lu->hash == NID_sha1
            || lu->hash == NID_sha224
            || lu->sig == EVP_PKEY_DSA
            || lu->sig == EVP_PKEY_RSA)
            continue;

        if (!tls1_lookup_md(lu, ((void*)0)))
            continue;
        if ((pkey == ((void*)0) && !has_usable_cert(s, lu, -1))
                || (pkey != ((void*)0) && !is_cert_usable(s, lu, x, pkey)))
            continue;

        tmppkey = (pkey != ((void*)0)) ? pkey
                                 : s->cert->pkeys[lu->sig_idx].privatekey;

        if (lu->sig == EVP_PKEY_EC) {

            if (curve == -1) {
                EC_KEY *ec = EVP_PKEY_get0_EC_KEY(tmppkey);
                curve = EC_GROUP_get_curve_name(EC_KEY_get0_group(ec));
            }
            if (lu->curve != NID_undef && curve != lu->curve)
                continue;



        } else if (lu->sig == EVP_PKEY_RSA_PSS) {

            if (!rsa_pss_check_min_key_size(EVP_PKEY_get0(tmppkey), lu))
                continue;
        }
        break;
    }

    if (i == s->shared_sigalgslen)
        return ((void*)0);

    return lu;
}
