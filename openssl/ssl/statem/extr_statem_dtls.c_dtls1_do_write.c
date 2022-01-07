
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct hm_header_st {size_t msg_len; size_t frag_off; int seq; int type; } ;
struct TYPE_16__ {size_t init_off; size_t init_num; size_t max_send_fragment; scalar_t__ version; int msg_callback_arg; TYPE_1__* init_buf; int (* msg_callback ) (int,scalar_t__,int,int *,size_t,TYPE_3__*,int ) ;TYPE_2__* d1; int rwstate; int wbio; scalar_t__ enc_write_ctx; scalar_t__ write_hash; } ;
struct TYPE_15__ {size_t mtu; struct hm_header_st w_msg_hdr; int retransmitting; } ;
struct TYPE_14__ {int * data; } ;
typedef TYPE_3__ SSL ;


 int BIO_CTRL_DGRAM_MTU_EXCEEDED ;
 scalar_t__ BIO_ctrl (int ,int ,int ,int *) ;
 int BIO_flush (int ) ;
 size_t BIO_wpending (int ) ;
 scalar_t__ DTLS1_BAD_VER ;
 size_t DTLS1_HM_HEADER_LENGTH ;
 size_t DTLS1_RT_HEADER_LENGTH ;
 int EVP_CIPHER_CTX_block_size (scalar_t__) ;
 int EVP_CIPHER_CTX_cipher (scalar_t__) ;
 scalar_t__ EVP_CIPHER_CTX_mode (scalar_t__) ;
 int EVP_CIPHER_flags (int ) ;
 scalar_t__ EVP_CIPH_CBC_MODE ;
 int EVP_CIPH_FLAG_AEAD_CIPHER ;
 size_t EVP_MD_CTX_size (scalar_t__) ;
 int SSL3_RT_HANDSHAKE ;
 int SSL_NOTHING ;
 int SSL_OP_NO_QUERY_MTU ;
 int SSL_WRITING ;
 int SSL_get_options (TYPE_3__*) ;
 int SSL_get_wbio (TYPE_3__*) ;
 int dtls1_fix_message_header (TYPE_3__*,size_t,size_t) ;
 size_t dtls1_min_mtu (TYPE_3__*) ;
 int dtls1_query_mtu (TYPE_3__*) ;
 int dtls1_write_bytes (TYPE_3__*,int,int *,size_t,size_t*) ;
 int dtls1_write_message_header (TYPE_3__*,unsigned char*) ;
 int l2n3 (size_t,unsigned char*) ;
 int ossl_assert (int) ;
 int s2n (int ,unsigned char*) ;
 int ssl3_finish_mac (TYPE_3__*,unsigned char*,size_t) ;
 int stub1 (int,scalar_t__,int,int *,size_t,TYPE_3__*,int ) ;

int dtls1_do_write(SSL *s, int type)
{
    int ret;
    size_t written;
    size_t curr_mtu;
    int retry = 1;
    size_t len, frag_off, mac_size, blocksize, used_len;

    if (!dtls1_query_mtu(s))
        return -1;

    if (s->d1->mtu < dtls1_min_mtu(s))

        return -1;

    if (s->init_off == 0 && type == SSL3_RT_HANDSHAKE) {
        if (!ossl_assert(s->init_num ==
                         s->d1->w_msg_hdr.msg_len + DTLS1_HM_HEADER_LENGTH))
            return -1;
    }

    if (s->write_hash) {
        if (s->enc_write_ctx
            && (EVP_CIPHER_flags(EVP_CIPHER_CTX_cipher(s->enc_write_ctx)) &
                EVP_CIPH_FLAG_AEAD_CIPHER) != 0)
            mac_size = 0;
        else
            mac_size = EVP_MD_CTX_size(s->write_hash);
    } else
        mac_size = 0;

    if (s->enc_write_ctx &&
        (EVP_CIPHER_CTX_mode(s->enc_write_ctx) == EVP_CIPH_CBC_MODE))
        blocksize = 2 * EVP_CIPHER_CTX_block_size(s->enc_write_ctx);
    else
        blocksize = 0;

    frag_off = 0;
    s->rwstate = SSL_NOTHING;


    while (s->init_num > 0) {
        if (type == SSL3_RT_HANDSHAKE && s->init_off != 0) {


            if (frag_off > 0) {


                if (s->init_off <= DTLS1_HM_HEADER_LENGTH) {







                    return -1;
                }





                s->init_off -= DTLS1_HM_HEADER_LENGTH;
                s->init_num += DTLS1_HM_HEADER_LENGTH;
            } else {






                frag_off = s->d1->w_msg_hdr.frag_off;
            }
        }

        used_len = BIO_wpending(s->wbio) + DTLS1_RT_HEADER_LENGTH
            + mac_size + blocksize;
        if (s->d1->mtu > used_len)
            curr_mtu = s->d1->mtu - used_len;
        else
            curr_mtu = 0;

        if (curr_mtu <= DTLS1_HM_HEADER_LENGTH) {



            ret = BIO_flush(s->wbio);
            if (ret <= 0) {
                s->rwstate = SSL_WRITING;
                return ret;
            }
            used_len = DTLS1_RT_HEADER_LENGTH + mac_size + blocksize;
            if (s->d1->mtu > used_len + DTLS1_HM_HEADER_LENGTH) {
                curr_mtu = s->d1->mtu - used_len;
            } else {

                return -1;
            }
        }




        if (((unsigned int)s->init_num) > curr_mtu)
            len = curr_mtu;
        else
            len = s->init_num;

        if (len > s->max_send_fragment)
            len = s->max_send_fragment;




        if (type == SSL3_RT_HANDSHAKE) {
            if (len < DTLS1_HM_HEADER_LENGTH) {




                return -1;
            }
            dtls1_fix_message_header(s, frag_off, len - DTLS1_HM_HEADER_LENGTH);

            dtls1_write_message_header(s,
                                       (unsigned char *)&s->init_buf->
                                       data[s->init_off]);
        }

        ret = dtls1_write_bytes(s, type, &s->init_buf->data[s->init_off], len,
                                &written);
        if (ret < 0) {






            if (retry && BIO_ctrl(SSL_get_wbio(s),
                                  BIO_CTRL_DGRAM_MTU_EXCEEDED, 0, ((void*)0)) > 0) {
                if (!(SSL_get_options(s) & SSL_OP_NO_QUERY_MTU)) {
                    if (!dtls1_query_mtu(s))
                        return -1;

                    retry = 0;
                } else
                    return -1;
            } else {
                return -1;
            }
        } else {





            if (!ossl_assert(len == written))
                return -1;

            if (type == SSL3_RT_HANDSHAKE && !s->d1->retransmitting) {




                unsigned char *p =
                    (unsigned char *)&s->init_buf->data[s->init_off];
                const struct hm_header_st *msg_hdr = &s->d1->w_msg_hdr;
                size_t xlen;

                if (frag_off == 0 && s->version != DTLS1_BAD_VER) {




                    *p++ = msg_hdr->type;
                    l2n3(msg_hdr->msg_len, p);
                    s2n(msg_hdr->seq, p);
                    l2n3(0, p);
                    l2n3(msg_hdr->msg_len, p);
                    p -= DTLS1_HM_HEADER_LENGTH;
                    xlen = written;
                } else {
                    p += DTLS1_HM_HEADER_LENGTH;
                    xlen = written - DTLS1_HM_HEADER_LENGTH;
                }

                if (!ssl3_finish_mac(s, p, xlen))
                    return -1;
            }

            if (written == s->init_num) {
                if (s->msg_callback)
                    s->msg_callback(1, s->version, type, s->init_buf->data,
                                    (size_t)(s->init_off + s->init_num), s,
                                    s->msg_callback_arg);

                s->init_off = 0;
                s->init_num = 0;

                return 1;
            }
            s->init_off += written;
            s->init_num -= written;
            written -= DTLS1_HM_HEADER_LENGTH;
            frag_off += written;







            dtls1_fix_message_header(s, frag_off, 0);
        }
    }
    return 0;
}
