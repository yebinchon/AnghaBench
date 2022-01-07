
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned int uint16_t ;
typedef int X509 ;
struct TYPE_9__ {int * pkey; } ;
struct TYPE_10__ {unsigned int group_id; int * peer_tmp; TYPE_1__ tmp; } ;
struct TYPE_11__ {TYPE_2__ s3; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;
typedef int EVP_PKEY ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_PKEY_copy_parameters (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_tls_encodedpoint (int *,int ,scalar_t__) ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_data (int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 unsigned int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ;
 int SSL_F_TLS_PARSE_STOC_KEY_SHARE ;
 int SSL_R_BAD_ECPOINT ;
 int SSL_R_BAD_KEY_SHARE ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_SECOP_CURVE_SUPPORTED ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 scalar_t__ ssl_derive (TYPE_3__*,int *,int *,int) ;
 int tls1_get_supported_groups (TYPE_3__*,unsigned int const**,size_t*) ;
 int tls_group_allowed (TYPE_3__*,unsigned int,int ) ;

int tls_parse_stoc_key_share(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                             size_t chainidx)
{

    unsigned int group_id;
    PACKET encoded_pt;
    EVP_PKEY *ckey = s->s3.tmp.pkey, *skey = ((void*)0);


    if (ckey == ((void*)0) || s->s3.peer_tmp != ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!PACKET_get_net_2(pkt, &group_id)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    if ((context & SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST) != 0) {
        const uint16_t *pgroups = ((void*)0);
        size_t i, num_groups;

        if (PACKET_remaining(pkt) != 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                     SSL_R_LENGTH_MISMATCH);
            return 0;
        }





        if (group_id == s->s3.group_id) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_STOC_KEY_SHARE, SSL_R_BAD_KEY_SHARE);
            return 0;
        }


        tls1_get_supported_groups(s, &pgroups, &num_groups);
        for (i = 0; i < num_groups; i++) {
            if (group_id == pgroups[i])
                break;
        }
        if (i >= num_groups
                || !tls_group_allowed(s, group_id, SSL_SECOP_CURVE_SUPPORTED)) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS_PARSE_STOC_KEY_SHARE, SSL_R_BAD_KEY_SHARE);
            return 0;
        }

        s->s3.group_id = group_id;
        EVP_PKEY_free(s->s3.tmp.pkey);
        s->s3.tmp.pkey = ((void*)0);
        return 1;
    }

    if (group_id != s->s3.group_id) {




        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 SSL_R_BAD_KEY_SHARE);
        return 0;
    }

    if (!PACKET_as_length_prefixed_2(pkt, &encoded_pt)
            || PACKET_remaining(&encoded_pt) == 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    skey = EVP_PKEY_new();
    if (skey == ((void*)0) || EVP_PKEY_copy_parameters(skey, ckey) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!EVP_PKEY_set1_tls_encodedpoint(skey, PACKET_data(&encoded_pt),
                                        PACKET_remaining(&encoded_pt))) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PARSE_STOC_KEY_SHARE,
                 SSL_R_BAD_ECPOINT);
        EVP_PKEY_free(skey);
        return 0;
    }

    if (ssl_derive(s, ckey, skey, 1) == 0) {

        EVP_PKEY_free(skey);
        return 0;
    }
    s->s3.peer_tmp = skey;


    return 1;
}
