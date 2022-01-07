
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int WPACKET ;
typedef int SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS ;
 int SSLfatal (int *,int ,int ,int) ;
 int TLSEXT_TYPE_ec_point_formats ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char const*,size_t) ;
 int ssl_get_min_max_version (int *,int*,int*,int *) ;
 int tls1_get_formatlist (int *,unsigned char const**,size_t*) ;
 int use_ecc (int *,int) ;

EXT_RETURN tls_construct_ctos_ec_pt_formats(SSL *s, WPACKET *pkt,
                                            unsigned int context, X509 *x,
                                            size_t chainidx)
{
    const unsigned char *pformats;
    size_t num_formats;
    int reason, min_version, max_version;

    reason = ssl_get_min_max_version(s, &min_version, &max_version, ((void*)0));
    if (reason != 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS, reason);
        return EXT_RETURN_FAIL;
    }
    if (!use_ecc(s, max_version))
        return EXT_RETURN_NOT_SENT;


    tls1_get_formatlist(s, &pformats, &num_formats);

    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_ec_point_formats)

            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_sub_memcpy_u8(pkt, pformats, num_formats)
            || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_EC_PT_FORMATS, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}
