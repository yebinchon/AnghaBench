
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int mb_param ;
struct TYPE_30__ {size_t interleave; unsigned char* inp; size_t len; int * out; } ;
struct TYPE_26__ {scalar_t__ empty_fragment_done; scalar_t__ alert_dispatch; } ;
struct TYPE_27__ {size_t wnum; size_t wpend_tot; size_t* write_sequence; unsigned char const* wpend_buf; int wpend_type; size_t wpend_ret; TYPE_4__* wbuf; } ;
struct TYPE_29__ {scalar_t__ early_data_state; scalar_t__ key_update; int (* handshake_func ) (TYPE_5__*) ;int version; int mode; size_t max_pipelines; TYPE_2__ s3; TYPE_3__ rlayer; int * enc_write_ctx; int wbio; TYPE_1__* method; int * msg_callback; int * compress; int rwstate; } ;
struct TYPE_28__ {scalar_t__ left; size_t len; scalar_t__ offset; int * buf; } ;
struct TYPE_25__ {int (* ssl_dispatch_alert ) (TYPE_5__*) ;} ;
typedef TYPE_4__ SSL3_BUFFER ;
typedef TYPE_5__ SSL ;
typedef TYPE_6__ EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM ;


 scalar_t__ BIO_get_ktls_send (int ) ;
 int BIO_should_retry (int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_CIPHER_CTX_cipher (int *) ;
 void* EVP_CIPHER_CTX_ctrl (int *,int ,int,TYPE_6__*) ;
 int EVP_CIPHER_flags (int ) ;
 int EVP_CIPH_FLAG_PIPELINE ;
 int EVP_CIPH_FLAG_TLS1_1_MULTIBLOCK ;
 int EVP_CTRL_TLS1_1_MULTIBLOCK_AAD ;
 int EVP_CTRL_TLS1_1_MULTIBLOCK_ENCRYPT ;
 int EVP_CTRL_TLS1_1_MULTIBLOCK_MAX_BUFSIZE ;
 int SSL3_RT_APPLICATION_DATA ;
 int SSL_AD_INTERNAL_ERROR ;
 scalar_t__ SSL_EARLY_DATA_UNAUTH_WRITING ;
 scalar_t__ SSL_EARLY_DATA_WRITING ;
 int SSL_F_SSL3_WRITE_BYTES ;
 int SSL_IS_DTLS (TYPE_5__*) ;
 scalar_t__ SSL_KEY_UPDATE_NONE ;
 size_t SSL_MAX_PIPELINES ;
 int SSL_MODE_ENABLE_PARTIAL_WRITE ;
 int SSL_MODE_RELEASE_BUFFERS ;
 int SSL_NOTHING ;
 int SSL_R_BAD_LENGTH ;
 scalar_t__ SSL_USE_EXPLICIT_IV (TYPE_5__*) ;
 int SSL_WRITE_ETM (TYPE_5__*) ;
 scalar_t__ SSL_in_init (TYPE_5__*) ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int do_ssl3_write (TYPE_5__*,int,unsigned char const*,size_t*,size_t,int ,size_t*) ;
 int early_data_count_ok (TYPE_5__*,size_t,int ,int) ;
 int memcpy (unsigned char*,size_t*,int) ;
 int ossl_statem_get_in_handshake (TYPE_5__*) ;
 int ossl_statem_set_in_init (TYPE_5__*,int) ;
 int ssl3_release_write_buffer (TYPE_5__*) ;
 int ssl3_setup_write_buffer (TYPE_5__*,int,size_t) ;
 int ssl3_write_pending (TYPE_5__*,int,unsigned char const*,size_t,size_t*) ;
 size_t ssl_get_max_send_fragment (TYPE_5__*) ;
 size_t ssl_get_split_send_fragment (TYPE_5__*) ;
 int stub1 (TYPE_5__*) ;
 int stub2 (TYPE_5__*) ;

int ssl3_write_bytes(SSL *s, int type, const void *buf_, size_t len,
                     size_t *written)
{
    const unsigned char *buf = buf_;
    size_t tot;
    size_t n, max_send_fragment, split_send_fragment, maxpipes;



    SSL3_BUFFER *wb = &s->rlayer.wbuf[0];
    int i;
    size_t tmpwrit;

    s->rwstate = SSL_NOTHING;
    tot = s->rlayer.wnum;
    if ((len < s->rlayer.wnum)
        || ((wb->left != 0) && (len < (s->rlayer.wnum + s->rlayer.wpend_tot)))) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_BYTES,
                 SSL_R_BAD_LENGTH);
        return -1;
    }

    if (s->early_data_state == SSL_EARLY_DATA_WRITING
            && !early_data_count_ok(s, len, 0, 1)) {

        return -1;
    }

    s->rlayer.wnum = 0;





    if (wb->left == 0 && s->key_update != SSL_KEY_UPDATE_NONE)
        ossl_statem_set_in_init(s, 1);






    if (SSL_in_init(s) && !ossl_statem_get_in_handshake(s)
            && s->early_data_state != SSL_EARLY_DATA_UNAUTH_WRITING) {
        i = s->handshake_func(s);

        if (i < 0)
            return i;
        if (i == 0) {
            return -1;
        }
    }





    if (wb->left != 0) {

        i = ssl3_write_pending(s, type, &buf[tot], s->rlayer.wpend_tot,
                               &tmpwrit);
        if (i <= 0) {

            s->rlayer.wnum = tot;
            return i;
        }
        tot += tmpwrit;
    }
    if (tot == len) {
        if (s->mode & SSL_MODE_RELEASE_BUFFERS && !SSL_IS_DTLS(s))
            ssl3_release_write_buffer(s);

        *written = tot;
        return 1;
    }

    n = (len - tot);

    max_send_fragment = ssl_get_max_send_fragment(s);
    split_send_fragment = ssl_get_split_send_fragment(s);






    maxpipes = s->max_pipelines;
    if (maxpipes > SSL_MAX_PIPELINES) {




        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_BYTES,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }
    if (maxpipes == 0
        || s->enc_write_ctx == ((void*)0)
        || !(EVP_CIPHER_flags(EVP_CIPHER_CTX_cipher(s->enc_write_ctx))
             & EVP_CIPH_FLAG_PIPELINE)
        || !SSL_USE_EXPLICIT_IV(s))
        maxpipes = 1;
    if (max_send_fragment == 0 || split_send_fragment == 0
        || split_send_fragment > max_send_fragment) {




        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_BYTES,
                 ERR_R_INTERNAL_ERROR);
        return -1;
    }

    for (;;) {
        size_t pipelens[SSL_MAX_PIPELINES], tmppipelen, remain;
        size_t numpipes, j;

        if (n == 0)
            numpipes = 1;
        else
            numpipes = ((n - 1) / split_send_fragment) + 1;
        if (numpipes > maxpipes)
            numpipes = maxpipes;

        if (n / numpipes >= max_send_fragment) {




            for (j = 0; j < numpipes; j++) {
                pipelens[j] = max_send_fragment;
            }
        } else {

            tmppipelen = n / numpipes;
            remain = n % numpipes;
            for (j = 0; j < numpipes; j++) {
                pipelens[j] = tmppipelen;
                if (j < remain)
                    pipelens[j]++;
            }
        }

        i = do_ssl3_write(s, type, &(buf[tot]), pipelens, numpipes, 0,
                          &tmpwrit);
        if (i <= 0) {


            s->rlayer.wnum = tot;
            return i;
        }

        if (tmpwrit == n ||
            (type == SSL3_RT_APPLICATION_DATA &&
             (s->mode & SSL_MODE_ENABLE_PARTIAL_WRITE))) {




            s->s3.empty_fragment_done = 0;

            if (tmpwrit == n
                    && (s->mode & SSL_MODE_RELEASE_BUFFERS) != 0
                    && !SSL_IS_DTLS(s))
                ssl3_release_write_buffer(s);

            *written = tot + tmpwrit;
            return 1;
        }

        n -= tmpwrit;
        tot += tmpwrit;
    }
}
