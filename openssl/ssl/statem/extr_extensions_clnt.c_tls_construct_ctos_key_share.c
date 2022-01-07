
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int X509 ;
typedef int WPACKET ;
struct TYPE_8__ {scalar_t__ group_id; } ;
struct TYPE_9__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE ;
 int SSL_R_NO_SUITABLE_KEY_SHARE ;
 int SSL_SECOP_CURVE_SUPPORTED ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int TLSEXT_TYPE_key_share ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int add_key_share (TYPE_2__*,int *,scalar_t__) ;
 int tls1_get_supported_groups (TYPE_2__*,scalar_t__ const**,size_t*) ;
 int tls_group_allowed (TYPE_2__*,scalar_t__ const,int ) ;

EXT_RETURN tls_construct_ctos_key_share(SSL *s, WPACKET *pkt,
                                        unsigned int context, X509 *x,
                                        size_t chainidx)
{

    size_t i, num_groups = 0;
    const uint16_t *pgroups = ((void*)0);
    uint16_t curve_id = 0;


    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_key_share)

            || !WPACKET_start_sub_packet_u16(pkt)

            || !WPACKET_start_sub_packet_u16(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    tls1_get_supported_groups(s, &pgroups, &num_groups);





    if (s->s3.group_id != 0) {
        curve_id = s->s3.group_id;
    } else {
        for (i = 0; i < num_groups; i++) {

            if (!tls_group_allowed(s, pgroups[i], SSL_SECOP_CURVE_SUPPORTED))
                continue;

            curve_id = pgroups[i];
            break;
        }
    }

    if (curve_id == 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE,
                 SSL_R_NO_SUITABLE_KEY_SHARE);
        return EXT_RETURN_FAIL;
    }

    if (!add_key_share(s, pkt, curve_id)) {

        return EXT_RETURN_FAIL;
    }

    if (!WPACKET_close(pkt) || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_KEY_SHARE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }
    return EXT_RETURN_SENT;



}
