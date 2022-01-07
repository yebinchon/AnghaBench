
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* write_mac_secret; unsigned char* read_mac_secret; } ;
struct TYPE_8__ {int enc_read_ctx; int * read_hash; int rlayer; TYPE_1__ s3; int * write_hash; } ;
struct TYPE_7__ {unsigned char type; int length; unsigned char* input; int orig_len; } ;
typedef TYPE_2__ SSL3_RECORD ;
typedef TYPE_3__ SSL ;
typedef int EVP_MD_CTX ;


 scalar_t__ EVP_CIPHER_CTX_mode (int ) ;
 scalar_t__ EVP_CIPH_CBC_MODE ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char*,size_t) ;
 scalar_t__ EVP_MD_CTX_copy_ex (int *,int const*) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_CTX_size (int const*) ;
 unsigned char* RECORD_LAYER_get_read_sequence (int *) ;
 unsigned char* RECORD_LAYER_get_write_sequence (int *) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int s2n (int,unsigned char*) ;
 scalar_t__ ssl3_cbc_digest_record (int const*,unsigned char*,size_t*,unsigned char*,unsigned char*,int,int ,unsigned char*,size_t,int) ;
 scalar_t__ ssl3_cbc_record_digest_supported (int const*) ;
 unsigned char* ssl3_pad_1 ;
 unsigned char* ssl3_pad_2 ;
 int ssl3_record_sequence_update (unsigned char*) ;

int n_ssl3_mac(SSL *ssl, SSL3_RECORD *rec, unsigned char *md, int sending)
{
    unsigned char *mac_sec, *seq;
    const EVP_MD_CTX *hash;
    unsigned char *p, rec_char;
    size_t md_size;
    size_t npad;
    int t;

    if (sending) {
        mac_sec = &(ssl->s3.write_mac_secret[0]);
        seq = RECORD_LAYER_get_write_sequence(&ssl->rlayer);
        hash = ssl->write_hash;
    } else {
        mac_sec = &(ssl->s3.read_mac_secret[0]);
        seq = RECORD_LAYER_get_read_sequence(&ssl->rlayer);
        hash = ssl->read_hash;
    }

    t = EVP_MD_CTX_size(hash);
    if (t < 0)
        return 0;
    md_size = t;
    npad = (48 / md_size) * md_size;

    if (!sending &&
        EVP_CIPHER_CTX_mode(ssl->enc_read_ctx) == EVP_CIPH_CBC_MODE &&
        ssl3_cbc_record_digest_supported(hash)) {
        unsigned char header[75];
        size_t j = 0;
        memcpy(header + j, mac_sec, md_size);
        j += md_size;
        memcpy(header + j, ssl3_pad_1, npad);
        j += npad;
        memcpy(header + j, seq, 8);
        j += 8;
        header[j++] = rec->type;
        header[j++] = (unsigned char)(rec->length >> 8);
        header[j++] = (unsigned char)(rec->length & 0xff);


        if (ssl3_cbc_digest_record(hash,
                                   md, &md_size,
                                   header, rec->input,
                                   rec->length + md_size, rec->orig_len,
                                   mac_sec, md_size, 1) <= 0)
            return 0;
    } else {
        unsigned int md_size_u;

        EVP_MD_CTX *md_ctx = EVP_MD_CTX_new();

        if (md_ctx == ((void*)0))
            return 0;

        rec_char = rec->type;
        p = md;
        s2n(rec->length, p);
        if (EVP_MD_CTX_copy_ex(md_ctx, hash) <= 0
            || EVP_DigestUpdate(md_ctx, mac_sec, md_size) <= 0
            || EVP_DigestUpdate(md_ctx, ssl3_pad_1, npad) <= 0
            || EVP_DigestUpdate(md_ctx, seq, 8) <= 0
            || EVP_DigestUpdate(md_ctx, &rec_char, 1) <= 0
            || EVP_DigestUpdate(md_ctx, md, 2) <= 0
            || EVP_DigestUpdate(md_ctx, rec->input, rec->length) <= 0
            || EVP_DigestFinal_ex(md_ctx, md, ((void*)0)) <= 0
            || EVP_MD_CTX_copy_ex(md_ctx, hash) <= 0
            || EVP_DigestUpdate(md_ctx, mac_sec, md_size) <= 0
            || EVP_DigestUpdate(md_ctx, ssl3_pad_2, npad) <= 0
            || EVP_DigestUpdate(md_ctx, md, md_size) <= 0
            || EVP_DigestFinal_ex(md_ctx, md, &md_size_u) <= 0) {
            EVP_MD_CTX_free(md_ctx);
            return 0;
        }

        EVP_MD_CTX_free(md_ctx);
    }

    ssl3_record_sequence_update(seq);
    return 1;
}
