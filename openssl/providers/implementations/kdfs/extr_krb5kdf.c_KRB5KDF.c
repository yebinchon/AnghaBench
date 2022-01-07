
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 size_t EVP_CIPHER_CTX_block_size (int *) ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_reset (int *) ;
 scalar_t__ EVP_CIPHER_nid (int const*) ;
 int EVP_EncryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_EncryptUpdate (int *,unsigned char*,int*,unsigned char*,size_t) ;
 int EVP_MAX_BLOCK_LENGTH ;
 scalar_t__ NID_des_ede3_cbc ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int PROV_R_FAILED_TO_GENERATE_KEY ;
 int PROV_R_INVALID_CONSTANT_LENGTH ;
 int PROV_R_WRONG_FINAL_BLOCK_LENGTH ;
 int PROV_R_WRONG_OUTPUT_BUFFER_SIZE ;
 int cipher_init (int *,int const*,int *,unsigned char const*,size_t) ;
 int fixup_des3_key (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int n_fold (unsigned char*,size_t,unsigned char const*,size_t) ;

__attribute__((used)) static int KRB5KDF(const EVP_CIPHER *cipher, ENGINE *engine,
                   const unsigned char *key, size_t key_len,
                   const unsigned char *constant, size_t constant_len,
                   unsigned char *okey, size_t okey_len)
{
    EVP_CIPHER_CTX *ctx = ((void*)0);
    unsigned char block[EVP_MAX_BLOCK_LENGTH * 2];
    unsigned char *plainblock, *cipherblock;
    size_t blocksize;
    size_t cipherlen;
    size_t osize;
    int des3_no_fixup = 0;
    int ret;

    if (key_len != okey_len) {


        if (EVP_CIPHER_nid(cipher) == NID_des_ede3_cbc &&
            key_len == 24 && okey_len == 21) {
                des3_no_fixup = 1;
        } else {
            ERR_raise(ERR_LIB_PROV, PROV_R_WRONG_OUTPUT_BUFFER_SIZE);
            return 0;
        }
    }

    ctx = EVP_CIPHER_CTX_new();
    if (ctx == ((void*)0))
        return 0;

    ret = cipher_init(ctx, cipher, engine, key, key_len);
    if (!ret)
        goto out;


    blocksize = EVP_CIPHER_CTX_block_size(ctx);

    if (constant_len > blocksize) {
        ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_CONSTANT_LENGTH);
        ret = 0;
        goto out;
    }

    n_fold(block, blocksize, constant, constant_len);
    plainblock = block;
    cipherblock = block + EVP_MAX_BLOCK_LENGTH;

    for (osize = 0; osize < okey_len; osize += cipherlen) {
        int olen;

        ret = EVP_EncryptUpdate(ctx, cipherblock, &olen,
                                plainblock, blocksize);
        if (!ret)
            goto out;
        cipherlen = olen;
        ret = EVP_EncryptFinal_ex(ctx, cipherblock, &olen);
        if (!ret)
            goto out;
        if (olen != 0) {
            ERR_raise(ERR_LIB_PROV, PROV_R_WRONG_FINAL_BLOCK_LENGTH);
            ret = 0;
            goto out;
        }


        if (cipherlen > okey_len - osize)
            cipherlen = okey_len - osize;
        memcpy(okey + osize, cipherblock, cipherlen);

        if (okey_len > osize + cipherlen) {

            ret = EVP_CIPHER_CTX_reset(ctx);
            if (!ret)
                goto out;
            ret = cipher_init(ctx, cipher, engine, key, key_len);
            if (!ret)
                goto out;



            plainblock = cipherblock;
            if (cipherblock == block) {
                cipherblock += EVP_MAX_BLOCK_LENGTH;
            } else {
                cipherblock = block;
            }
        }
    }


    if (EVP_CIPHER_nid(cipher) == NID_des_ede3_cbc && !des3_no_fixup) {
        ret = fixup_des3_key(okey);
        if (!ret) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GENERATE_KEY);
            goto out;
        }
    }


    ret = 1;

out:
    EVP_CIPHER_CTX_free(ctx);
    OPENSSL_cleanse(block, EVP_MAX_BLOCK_LENGTH * 2);
    return ret;
}
