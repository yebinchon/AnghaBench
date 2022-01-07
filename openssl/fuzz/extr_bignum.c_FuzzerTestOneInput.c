
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int * BN_bin2bn (size_t const*,size_t,int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int BN_mod_exp_simple (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_print_fp (int ,int *) ;
 int BN_set_negative (int *,int) ;
 int ERR_clear_error () ;
 int OPENSSL_assert (int) ;
 int putchar (char) ;
 int stdout ;

int FuzzerTestOneInput(const uint8_t *buf, size_t len)
{
    int success = 0;
    size_t l1 = 0, l2 = 0, l3 = 0;
    int s1 = 0, s3 = 0;
    BN_CTX *ctx;
    BIGNUM *b1;
    BIGNUM *b2;
    BIGNUM *b3;
    BIGNUM *b4;
    BIGNUM *b5;

    b1 = BN_new();
    b2 = BN_new();
    b3 = BN_new();
    b4 = BN_new();
    b5 = BN_new();
    ctx = BN_CTX_new();





    if (len > 2) {
        len -= 3;
        l1 = (buf[0] * len) / 255;
        ++buf;
        l2 = (buf[0] * (len - l1)) / 255;
        ++buf;
        l3 = len - l1 - l2;

        s1 = buf[0] & 1;
        s3 = buf[0] & 4;
        ++buf;
    }
    OPENSSL_assert(BN_bin2bn(buf, l1, b1) == b1);
    BN_set_negative(b1, s1);
    OPENSSL_assert(BN_bin2bn(buf + l1, l2, b2) == b2);
    OPENSSL_assert(BN_bin2bn(buf + l1 + l2, l3, b3) == b3);
    BN_set_negative(b3, s3);


    if (BN_is_zero(b3)) {
        success = 1;
        goto done;
    }

    OPENSSL_assert(BN_mod_exp(b4, b1, b2, b3, ctx));
    OPENSSL_assert(BN_mod_exp_simple(b5, b1, b2, b3, ctx));

    success = BN_cmp(b4, b5) == 0;
    if (!success) {
        BN_print_fp(stdout, b1);
        putchar('\n');
        BN_print_fp(stdout, b2);
        putchar('\n');
        BN_print_fp(stdout, b3);
        putchar('\n');
        BN_print_fp(stdout, b4);
        putchar('\n');
        BN_print_fp(stdout, b5);
        putchar('\n');
    }

 done:
    OPENSSL_assert(success);
    BN_free(b1);
    BN_free(b2);
    BN_free(b3);
    BN_free(b4);
    BN_free(b5);
    BN_CTX_free(ctx);
    ERR_clear_error();

    return 0;
}
