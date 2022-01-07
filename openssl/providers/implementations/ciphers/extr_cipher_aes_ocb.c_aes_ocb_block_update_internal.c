
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_AES_OCB_CTX ;
typedef int (* OSSL_ocb_cipher_fn ) (int *,unsigned char const*,unsigned char*,size_t) ;


 size_t AES_BLOCK_SIZE ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_CIPHER_OPERATION_FAILED ;
 int PROV_R_OUTPUT_BUFFER_TOO_SMALL ;
 size_t fillblock (unsigned char*,size_t*,size_t,unsigned char const**,size_t*) ;
 int trailingdata (unsigned char*,size_t*,size_t,unsigned char const**,size_t*) ;

__attribute__((used)) static int aes_ocb_block_update_internal(PROV_AES_OCB_CTX *ctx,
                                         unsigned char *buf, size_t *bufsz,
                                         unsigned char *out, size_t *outl,
                                         size_t outsize, const unsigned char *in,
                                         size_t inl, OSSL_ocb_cipher_fn ciph)
{
    size_t nextblocks = fillblock(buf, bufsz, AES_BLOCK_SIZE, &in, &inl);
    size_t outlint = 0;

    if (*bufsz == AES_BLOCK_SIZE) {
        if (outsize < AES_BLOCK_SIZE) {
            ERR_raise(ERR_LIB_PROV, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
            return 0;
        }
        if (!ciph(ctx, buf, out, AES_BLOCK_SIZE)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_CIPHER_OPERATION_FAILED);
            return 0;
        }
        *bufsz = 0;
        outlint = AES_BLOCK_SIZE;
        out += AES_BLOCK_SIZE;
    }
    if (nextblocks > 0) {
        outlint += nextblocks;
        if (outsize < outlint) {
            ERR_raise(ERR_LIB_PROV, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
            return 0;
        }
        if (!ciph(ctx, in, out, nextblocks)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_CIPHER_OPERATION_FAILED);
            return 0;
        }
        in += nextblocks;
        inl -= nextblocks;
    }
    if (!trailingdata(buf, bufsz, AES_BLOCK_SIZE, &in, &inl)) {

        return 0;
    }

    *outl = outlint;
    return inl == 0;
}
