
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int BN_CTX ;
typedef scalar_t__ BNRAND_FLAG ;
typedef int BIGNUM ;


 int BN_F_BNRAND ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ANY ;
 int BN_R_BITS_TOO_SMALL ;
 int BN_bin2bn (unsigned char*,int,int *) ;
 int BN_zero (int *) ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ NORMAL ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;
 scalar_t__ TESTING ;
 int bn_check_top (int *) ;
 int * bn_get_lib_ctx (int *) ;
 scalar_t__ rand_bytes_ex (int *,unsigned char*,int) ;
 scalar_t__ rand_priv_bytes_ex (int *,unsigned char*,int) ;

__attribute__((used)) static int bnrand(BNRAND_FLAG flag, BIGNUM *rnd, int bits, int top, int bottom,
                  BN_CTX *ctx)
{
    unsigned char *buf = ((void*)0);
    int b, ret = 0, bit, bytes, mask;
    OPENSSL_CTX *libctx = bn_get_lib_ctx(ctx);

    if (bits == 0) {
        if (top != BN_RAND_TOP_ANY || bottom != BN_RAND_BOTTOM_ANY)
            goto toosmall;
        BN_zero(rnd);
        return 1;
    }
    if (bits < 0 || (bits == 1 && top > 0))
        goto toosmall;

    bytes = (bits + 7) / 8;
    bit = (bits - 1) % 8;
    mask = 0xff << (bit + 1);

    buf = OPENSSL_malloc(bytes);
    if (buf == ((void*)0)) {
        BNerr(BN_F_BNRAND, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    b = flag == NORMAL ? rand_bytes_ex(libctx, buf, bytes)
                       : rand_priv_bytes_ex(libctx, buf, bytes);
    if (b <= 0)
        goto err;

    if (flag == TESTING) {



        int i;
        unsigned char c;

        for (i = 0; i < bytes; i++) {
            if (rand_bytes_ex(libctx, &c, 1) <= 0)
                goto err;
            if (c >= 128 && i > 0)
                buf[i] = buf[i - 1];
            else if (c < 42)
                buf[i] = 0;
            else if (c < 84)
                buf[i] = 255;
        }
    }

    if (top >= 0) {
        if (top) {
            if (bit == 0) {
                buf[0] = 1;
                buf[1] |= 0x80;
            } else {
                buf[0] |= (3 << (bit - 1));
            }
        } else {
            buf[0] |= (1 << bit);
        }
    }
    buf[0] &= ~mask;
    if (bottom)
        buf[bytes - 1] |= 1;
    if (!BN_bin2bn(buf, bytes, rnd))
        goto err;
    ret = 1;
 err:
    OPENSSL_clear_free(buf, bytes);
    bn_check_top(rnd);
    return ret;

toosmall:
    BNerr(BN_F_BNRAND, BN_R_BITS_TOO_SMALL);
    return 0;
}
