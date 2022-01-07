
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int secret ;
typedef int application_traffic ;
struct TYPE_10__ {int enc_write_state; } ;
struct TYPE_8__ {int new_sym_enc; } ;
struct TYPE_9__ {TYPE_1__ tmp; } ;
struct TYPE_11__ {int server; unsigned char* server_app_traffic_secret; unsigned char* client_app_traffic_secret; unsigned char* write_iv; unsigned char* read_iv; TYPE_3__ statem; TYPE_2__ s3; int rlayer; int * enc_read_ctx; int * enc_write_ctx; } ;
typedef TYPE_4__ SSL ;
typedef int EVP_MD ;
typedef int EVP_CIPHER_CTX ;


 int ENC_WRITE_STATE_INVALID ;
 int ENC_WRITE_STATE_VALID ;
 int EVP_MAX_MD_SIZE ;
 size_t EVP_MD_size (int const*) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int RECORD_LAYER_reset_read_sequence (int *) ;
 int RECORD_LAYER_reset_write_sequence (int *) ;
 int derive_secret_key_and_iv (TYPE_4__*,int,int *,int ,unsigned char*,int *,unsigned char const*,int,unsigned char*,unsigned char*,int *) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int * ssl_handshake_md (TYPE_4__*) ;

int tls13_update_key(SSL *s, int sending)
{



  static const unsigned char application_traffic[] = "traffic upd";

    const EVP_MD *md = ssl_handshake_md(s);
    size_t hashlen = EVP_MD_size(md);
    unsigned char *insecret, *iv;
    unsigned char secret[EVP_MAX_MD_SIZE];
    EVP_CIPHER_CTX *ciph_ctx;
    int ret = 0;

    if (s->server == sending)
        insecret = s->server_app_traffic_secret;
    else
        insecret = s->client_app_traffic_secret;

    if (sending) {
        s->statem.enc_write_state = ENC_WRITE_STATE_INVALID;
        iv = s->write_iv;
        ciph_ctx = s->enc_write_ctx;
        RECORD_LAYER_reset_write_sequence(&s->rlayer);
    } else {
        iv = s->read_iv;
        ciph_ctx = s->enc_read_ctx;
        RECORD_LAYER_reset_read_sequence(&s->rlayer);
    }

    if (!derive_secret_key_and_iv(s, sending, ssl_handshake_md(s),
                                  s->s3.tmp.new_sym_enc, insecret, ((void*)0),
                                  application_traffic,
                                  sizeof(application_traffic) - 1, secret, iv,
                                  ciph_ctx)) {

        goto err;
    }

    memcpy(insecret, secret, hashlen);

    s->statem.enc_write_state = ENC_WRITE_STATE_VALID;
    ret = 1;
 err:
    OPENSSL_cleanse(secret, sizeof(secret));
    return ret;
}
