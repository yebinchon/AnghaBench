
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* d; scalar_t__ top; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_F_BN_COMPUTE_WNAF ;
 int BN_is_bit_set (TYPE_1__ const*,size_t) ;
 scalar_t__ BN_is_negative (TYPE_1__ const*) ;
 scalar_t__ BN_is_zero (TYPE_1__ const*) ;
 size_t BN_num_bits (TYPE_1__ const*) ;
 int BNerr (int ,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (size_t) ;

signed char *bn_compute_wNAF(const BIGNUM *scalar, int w, size_t *ret_len)
{
    int window_val;
    signed char *r = ((void*)0);
    int sign = 1;
    int bit, next_bit, mask;
    size_t len = 0, j;

    if (BN_is_zero(scalar)) {
        r = OPENSSL_malloc(1);
        if (r == ((void*)0)) {
            BNerr(BN_F_BN_COMPUTE_WNAF, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        r[0] = 0;
        *ret_len = 1;
        return r;
    }

    if (w <= 0 || w > 7) {

        BNerr(BN_F_BN_COMPUTE_WNAF, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    bit = 1 << w;
    next_bit = bit << 1;
    mask = next_bit - 1;

    if (BN_is_negative(scalar)) {
        sign = -1;
    }

    if (scalar->d == ((void*)0) || scalar->top == 0) {
        BNerr(BN_F_BN_COMPUTE_WNAF, ERR_R_INTERNAL_ERROR);
        goto err;
    }

    len = BN_num_bits(scalar);
    r = OPENSSL_malloc(len + 1);




    if (r == ((void*)0)) {
        BNerr(BN_F_BN_COMPUTE_WNAF, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    window_val = scalar->d[0] & mask;
    j = 0;
    while ((window_val != 0) || (j + w + 1 < len)) {


        int digit = 0;



        if (window_val & 1) {


            if (window_val & bit) {
                digit = window_val - next_bit;


                if (j + w + 1 >= len) {







                    digit = window_val & (mask >> 1);
                }

            } else {
                digit = window_val;
            }

            if (digit <= -bit || digit >= bit || !(digit & 1)) {
                BNerr(BN_F_BN_COMPUTE_WNAF, ERR_R_INTERNAL_ERROR);
                goto err;
            }

            window_val -= digit;





            if (window_val != 0 && window_val != next_bit
                && window_val != bit) {
                BNerr(BN_F_BN_COMPUTE_WNAF, ERR_R_INTERNAL_ERROR);
                goto err;
            }
        }

        r[j++] = sign * digit;

        window_val >>= 1;
        window_val += bit * BN_is_bit_set(scalar, j + w);

        if (window_val > next_bit) {
            BNerr(BN_F_BN_COMPUTE_WNAF, ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (j > len + 1) {
        BNerr(BN_F_BN_COMPUTE_WNAF, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    *ret_len = j;
    return r;

 err:
    OPENSSL_free(r);
    return ((void*)0);
}
