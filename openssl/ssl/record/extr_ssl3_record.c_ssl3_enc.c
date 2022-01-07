
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int read_hash; int * session; int * enc_read_ctx; int * enc_write_ctx; } ;
struct TYPE_7__ {unsigned char* data; unsigned char* input; size_t length; } ;
typedef TYPE_1__ SSL3_RECORD ;
typedef TYPE_2__ SSL ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int ERR_R_INTERNAL_ERROR ;
 size_t EVP_CIPHER_CTX_block_size (int *) ;
 int * EVP_CIPHER_CTX_cipher (int *) ;
 int EVP_Cipher (int *,unsigned char*,unsigned char*,unsigned int) ;
 int * EVP_MD_CTX_md (int ) ;
 int EVP_MD_CTX_size (int ) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_ENC ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 int ssl3_cbc_remove_padding (TYPE_1__*,size_t,size_t) ;

int ssl3_enc(SSL *s, SSL3_RECORD *inrecs, size_t n_recs, int sending)
{
    SSL3_RECORD *rec;
    EVP_CIPHER_CTX *ds;
    size_t l, i;
    size_t bs, mac_size = 0;
    int imac_size;
    const EVP_CIPHER *enc;

    rec = inrecs;



    if (n_recs != 1)
        return 0;
    if (sending) {
        ds = s->enc_write_ctx;
        if (s->enc_write_ctx == ((void*)0))
            enc = ((void*)0);
        else
            enc = EVP_CIPHER_CTX_cipher(s->enc_write_ctx);
    } else {
        ds = s->enc_read_ctx;
        if (s->enc_read_ctx == ((void*)0))
            enc = ((void*)0);
        else
            enc = EVP_CIPHER_CTX_cipher(s->enc_read_ctx);
    }

    if ((s->session == ((void*)0)) || (ds == ((void*)0)) || (enc == ((void*)0))) {
        memmove(rec->data, rec->input, rec->length);
        rec->input = rec->data;
    } else {
        l = rec->length;

        bs = EVP_CIPHER_CTX_block_size(ds);



        if ((bs != 1) && sending) {
            i = bs - (l % bs);


            l += i;




            memset(&rec->input[rec->length], 0, i);
            rec->length += i;
            rec->input[l - 1] = (unsigned char)(i - 1);
        }

        if (!sending) {
            if (l == 0 || l % bs != 0)
                return 0;

        }


        if (EVP_Cipher(ds, rec->data, rec->input, (unsigned int)l) < 1)
            return -1;

        if (EVP_MD_CTX_md(s->read_hash) != ((void*)0)) {

            imac_size = EVP_MD_CTX_size(s->read_hash);
            if (imac_size < 0) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_ENC,
                         ERR_R_INTERNAL_ERROR);
                return -1;
            }
            mac_size = (size_t)imac_size;
        }
        if ((bs != 1) && !sending)
            return ssl3_cbc_remove_padding(rec, bs, mac_size);
    }
    return 1;
}
