
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int X509 ;
typedef int WPACKET ;
typedef int SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS ;
 int SSL_SECOP_CURVE_SUPPORTED ;
 int SSLfatal (int *,int ,int ,int) ;
 int TLS1_3_VERSION ;
 int TLSEXT_TYPE_supported_groups ;
 int WPACKET_FLAGS_NON_ZERO_LENGTH ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_set_flags (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int ssl_get_min_max_version (int *,int*,int*,int *) ;
 int tls1_get_supported_groups (int *,int const**,size_t*) ;
 scalar_t__ tls_group_allowed (int *,int ,int ) ;
 scalar_t__ tls_valid_group (int *,int ,int) ;
 int use_ecc (int *,int) ;

EXT_RETURN tls_construct_ctos_supported_groups(SSL *s, WPACKET *pkt,
                                               unsigned int context, X509 *x,
                                               size_t chainidx)
{
    const uint16_t *pgroups = ((void*)0);
    size_t num_groups = 0, i;
    int min_version, max_version, reason;

    reason = ssl_get_min_max_version(s, &min_version, &max_version, ((void*)0));
    if (reason != 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS, reason);
        return EXT_RETURN_FAIL;
    }





    if (!use_ecc(s, max_version) && max_version < TLS1_3_VERSION)
        return EXT_RETURN_NOT_SENT;





    tls1_get_supported_groups(s, &pgroups, &num_groups);

    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_supported_groups)

            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_set_flags(pkt, WPACKET_FLAGS_NON_ZERO_LENGTH)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    for (i = 0; i < num_groups; i++) {
        uint16_t ctmp = pgroups[i];

        if (tls_valid_group(s, ctmp, max_version)
                && tls_group_allowed(s, ctmp, SSL_SECOP_CURVE_SUPPORTED)) {
            if (!WPACKET_put_bytes_u16(pkt, ctmp)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS,
                         ERR_R_INTERNAL_ERROR);
                return EXT_RETURN_FAIL;
            }
        }
    }
    if (!WPACKET_close(pkt) || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}
