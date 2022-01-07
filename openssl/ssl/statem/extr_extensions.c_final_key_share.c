
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef unsigned int uint16_t ;
struct TYPE_12__ {int psk_kex_mode; int cookieok; } ;
struct TYPE_11__ {int flags; unsigned int group_id; int * peer_tmp; } ;
struct TYPE_13__ {scalar_t__ hello_retry_request; TYPE_2__ ext; TYPE_1__ s3; int hit; scalar_t__ server; } ;
typedef TYPE_3__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_MISSING_EXTENSION ;
 unsigned int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ;
 int SSL_F_FINAL_KEY_SHARE ;
 scalar_t__ SSL_HRR_COMPLETE ;
 scalar_t__ SSL_HRR_NONE ;
 scalar_t__ SSL_HRR_PENDING ;
 int SSL_IS_TLS13 (TYPE_3__*) ;
 int SSL_R_NO_SUITABLE_KEY_SHARE ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int TLS1_FLAGS_STATELESS ;
 int TLSEXT_KEX_MODE_FLAG_KE ;
 int TLSEXT_KEX_MODE_FLAG_KE_DHE ;
 scalar_t__ check_in_list (TYPE_3__*,unsigned int,unsigned int const*,size_t,int) ;
 int ossl_assert (int) ;
 int tls13_generate_handshake_secret (TYPE_3__*,int *,int ) ;
 int tls1_get_peer_groups (TYPE_3__*,unsigned int const**,size_t*) ;
 int tls1_get_supported_groups (TYPE_3__*,unsigned int const**,size_t*) ;

__attribute__((used)) static int final_key_share(SSL *s, unsigned int context, int sent)
{

    if (!SSL_IS_TLS13(s))
        return 1;


    if ((context & SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST) != 0)
        return 1;
    if (!s->server
            && !sent
            && (!s->hit
                || (s->ext.psk_kex_mode & TLSEXT_KEX_MODE_FLAG_KE) == 0)) {

        SSLfatal(s, SSL_AD_MISSING_EXTENSION, SSL_F_FINAL_KEY_SHARE,
                 SSL_R_NO_SUITABLE_KEY_SHARE);
        return 0;
    }
    if (s->server) {
        if (s->s3.peer_tmp != ((void*)0)) {

            if ((s->s3.flags & TLS1_FLAGS_STATELESS) != 0
                    && !s->ext.cookieok) {
                if (!ossl_assert(s->hello_retry_request == SSL_HRR_NONE)) {





                    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_KEY_SHARE,
                             ERR_R_INTERNAL_ERROR);
                    return 0;
                }
                s->hello_retry_request = SSL_HRR_PENDING;
                return 1;
            }
        } else {

            if (s->hello_retry_request == SSL_HRR_NONE && sent
                    && (!s->hit
                        || (s->ext.psk_kex_mode & TLSEXT_KEX_MODE_FLAG_KE_DHE)
                           != 0)) {
                const uint16_t *pgroups, *clntgroups;
                size_t num_groups, clnt_num_groups, i;
                unsigned int group_id = 0;




                tls1_get_peer_groups(s, &clntgroups, &clnt_num_groups);
                tls1_get_supported_groups(s, &pgroups, &num_groups);




                for (i = 0; i < num_groups; i++) {
                    group_id = pgroups[i];

                    if (check_in_list(s, group_id, clntgroups, clnt_num_groups,
                                      1))
                        break;
                }

                if (i < num_groups) {

                    s->s3.group_id = group_id;
                    s->hello_retry_request = SSL_HRR_PENDING;
                    return 1;
                }
            }
            if (!s->hit
                    || (s->ext.psk_kex_mode & TLSEXT_KEX_MODE_FLAG_KE) == 0) {

                SSLfatal(s, sent ? SSL_AD_HANDSHAKE_FAILURE
                                 : SSL_AD_MISSING_EXTENSION,
                         SSL_F_FINAL_KEY_SHARE, SSL_R_NO_SUITABLE_KEY_SHARE);
                return 0;
            }

            if ((s->s3.flags & TLS1_FLAGS_STATELESS) != 0
                    && !s->ext.cookieok) {
                if (!ossl_assert(s->hello_retry_request == SSL_HRR_NONE)) {





                    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_KEY_SHARE,
                             ERR_R_INTERNAL_ERROR);
                    return 0;
                }
                s->hello_retry_request = SSL_HRR_PENDING;
                return 1;
            }
        }





        if (s->hello_retry_request == SSL_HRR_PENDING)
            s->hello_retry_request = SSL_HRR_COMPLETE;
    } else {





        if (!sent && !tls13_generate_handshake_secret(s, ((void*)0), 0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_FINAL_KEY_SHARE,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    return 1;
}
