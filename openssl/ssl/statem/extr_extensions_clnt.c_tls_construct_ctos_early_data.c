
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int psk ;
typedef int identity ;
typedef int X509 ;
typedef int WPACKET ;
struct TYPE_18__ {int early_data_ok; int early_data; int alpn_len; int * alpn; int * hostname; } ;
struct TYPE_20__ {scalar_t__ hello_retry_request; size_t (* psk_client_callback ) (TYPE_4__*,int *,char*,int,unsigned char*,int) ;size_t psksession_id_len; scalar_t__ early_data_state; scalar_t__ max_early_data; TYPE_2__ ext; TYPE_3__* session; int * psksession_id; TYPE_3__* psksession; int (* psk_use_session_cb ) (TYPE_4__*,int const*,unsigned char const**,size_t*,TYPE_3__**) ;} ;
struct TYPE_17__ {scalar_t__ max_early_data; int alpn_selected_len; int * alpn_selected; int * hostname; } ;
struct TYPE_19__ {scalar_t__ ssl_version; TYPE_1__ ext; } ;
typedef TYPE_3__ SSL_SESSION ;
typedef int SSL_CIPHER ;
typedef TYPE_4__ SSL ;
typedef int PACKET ;
typedef int EXT_RETURN ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (unsigned char const*,size_t) ;
 int PACKET_buf_init (int *,int *,int ) ;
 scalar_t__ PACKET_equal (int *,int *,int ) ;
 scalar_t__ PACKET_get_length_prefixed_1 (int *,int *) ;
 int PSK_MAX_IDENTITY_LEN ;
 int PSK_MAX_PSK_LEN ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int * SSL_CIPHER_find (TYPE_4__*,unsigned char const*) ;
 scalar_t__ SSL_EARLY_DATA_CONNECTING ;
 int SSL_EARLY_DATA_REJECTED ;
 int SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA ;
 scalar_t__ SSL_HRR_PENDING ;
 int SSL_R_BAD_PSK ;
 int SSL_R_INCONSISTENT_EARLY_DATA_ALPN ;
 int SSL_R_INCONSISTENT_EARLY_DATA_SNI ;
 int SSL_SESSION_free (TYPE_3__*) ;
 TYPE_3__* SSL_SESSION_new () ;
 int SSL_SESSION_set1_master_key (TYPE_3__*,unsigned char*,size_t) ;
 int SSL_SESSION_set_cipher (TYPE_3__*,int const*) ;
 int SSL_SESSION_set_protocol_version (TYPE_3__*,scalar_t__) ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 scalar_t__ TLS1_3_VERSION ;
 int TLSEXT_TYPE_early_data ;
 int WPACKET_close (int *) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int memset (char*,int ,int) ;
 int * ssl_handshake_md (TYPE_4__*) ;
 scalar_t__ strcmp (int *,int *) ;
 size_t strlen (char*) ;
 int stub1 (TYPE_4__*,int const*,unsigned char const**,size_t*,TYPE_3__**) ;
 size_t stub2 (TYPE_4__*,int *,char*,int,unsigned char*,int) ;

EXT_RETURN tls_construct_ctos_early_data(SSL *s, WPACKET *pkt,
                                         unsigned int context, X509 *x,
                                         size_t chainidx)
{

    char identity[PSK_MAX_IDENTITY_LEN + 1];

    const unsigned char *id = ((void*)0);
    size_t idlen = 0;
    SSL_SESSION *psksess = ((void*)0);
    SSL_SESSION *edsess = ((void*)0);
    const EVP_MD *handmd = ((void*)0);

    if (s->hello_retry_request == SSL_HRR_PENDING)
        handmd = ssl_handshake_md(s);

    if (s->psk_use_session_cb != ((void*)0)
            && (!s->psk_use_session_cb(s, handmd, &id, &idlen, &psksess)
                || (psksess != ((void*)0)
                    && psksess->ssl_version != TLS1_3_VERSION))) {
        SSL_SESSION_free(psksess);
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                 SSL_R_BAD_PSK);
        return EXT_RETURN_FAIL;
    }


    if (psksess == ((void*)0) && s->psk_client_callback != ((void*)0)) {
        unsigned char psk[PSK_MAX_PSK_LEN];
        size_t psklen = 0;

        memset(identity, 0, sizeof(identity));
        psklen = s->psk_client_callback(s, ((void*)0), identity, sizeof(identity) - 1,
                                        psk, sizeof(psk));

        if (psklen > PSK_MAX_PSK_LEN) {
            SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        } else if (psklen > 0) {
            const unsigned char tls13_aes128gcmsha256_id[] = { 0x13, 0x01 };
            const SSL_CIPHER *cipher;

            idlen = strlen(identity);
            if (idlen > PSK_MAX_IDENTITY_LEN) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                         ERR_R_INTERNAL_ERROR);
                return EXT_RETURN_FAIL;
            }
            id = (unsigned char *)identity;





            cipher = SSL_CIPHER_find(s, tls13_aes128gcmsha256_id);
            if (cipher == ((void*)0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                         ERR_R_INTERNAL_ERROR);
                return EXT_RETURN_FAIL;
            }

            psksess = SSL_SESSION_new();
            if (psksess == ((void*)0)
                    || !SSL_SESSION_set1_master_key(psksess, psk, psklen)
                    || !SSL_SESSION_set_cipher(psksess, cipher)
                    || !SSL_SESSION_set_protocol_version(psksess, TLS1_3_VERSION)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                         ERR_R_INTERNAL_ERROR);
                OPENSSL_cleanse(psk, psklen);
                return EXT_RETURN_FAIL;
            }
            OPENSSL_cleanse(psk, psklen);
        }
    }


    SSL_SESSION_free(s->psksession);
    s->psksession = psksess;
    if (psksess != ((void*)0)) {
        OPENSSL_free(s->psksession_id);
        s->psksession_id = OPENSSL_memdup(id, idlen);
        if (s->psksession_id == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        s->psksession_id_len = idlen;
    }

    if (s->early_data_state != SSL_EARLY_DATA_CONNECTING
            || (s->session->ext.max_early_data == 0
                && (psksess == ((void*)0) || psksess->ext.max_early_data == 0))) {
        s->max_early_data = 0;
        return EXT_RETURN_NOT_SENT;
    }
    edsess = s->session->ext.max_early_data != 0 ? s->session : psksess;
    s->max_early_data = edsess->ext.max_early_data;

    if (edsess->ext.hostname != ((void*)0)) {
        if (s->ext.hostname == ((void*)0)
                || (s->ext.hostname != ((void*)0)
                    && strcmp(s->ext.hostname, edsess->ext.hostname) != 0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                     SSL_R_INCONSISTENT_EARLY_DATA_SNI);
            return EXT_RETURN_FAIL;
        }
    }

    if ((s->ext.alpn == ((void*)0) && edsess->ext.alpn_selected != ((void*)0))) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                 SSL_R_INCONSISTENT_EARLY_DATA_ALPN);
        return EXT_RETURN_FAIL;
    }





    if (edsess->ext.alpn_selected != ((void*)0)) {
        PACKET prots, alpnpkt;
        int found = 0;

        if (!PACKET_buf_init(&prots, s->ext.alpn, s->ext.alpn_len)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        while (PACKET_get_length_prefixed_1(&prots, &alpnpkt)) {
            if (PACKET_equal(&alpnpkt, edsess->ext.alpn_selected,
                             edsess->ext.alpn_selected_len)) {
                found = 1;
                break;
            }
        }
        if (!found) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                     SSL_R_INCONSISTENT_EARLY_DATA_ALPN);
            return EXT_RETURN_FAIL;
        }
    }

    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_early_data)
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }





    s->ext.early_data = SSL_EARLY_DATA_REJECTED;
    s->ext.early_data_ok = 1;

    return EXT_RETURN_SENT;
}
