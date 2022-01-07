
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * g; int * q; int * p; int dirty_cnt; } ;
typedef int EVP_MD ;
typedef TYPE_1__ DSA ;
typedef int BN_MONT_CTX ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_GENCB_call (int *,int,int) ;
 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int *,int *) ;
 int BN_add (int *,int *,int *) ;
 int BN_bin2bn (unsigned char*,int,int *) ;
 int BN_check_prime (int *,int *,int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_copy (int *,int *) ;
 int BN_div (int *,int *,int *,int *,int *) ;
 void* BN_dup (int *) ;
 int BN_free (int *) ;
 int BN_is_one (int *) ;
 int BN_lshift (int *,int *,int) ;
 int BN_lshift1 (int *,int *) ;
 int BN_mask_bits (int *,size_t) ;
 int BN_mod (int *,int *,int *,int *) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int *,int *) ;
 int BN_set_word (int *,unsigned int) ;
 int BN_sub (int *,int *,int *) ;
 int * BN_value_one () ;
 int BN_zero (int *) ;
 int DSA_F_DSA_BUILTIN_PARAMGEN ;
 int DSA_R_SEED_LEN_SMALL ;
 int DSAerr (int ,int ) ;
 int EVP_Digest (unsigned char*,int,unsigned char*,int *,int const*,int *) ;
 int EVP_MD_size (int const*) ;
 int * EVP_sha1 () ;
 int * EVP_sha224 () ;
 int * EVP_sha256 () ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int SHA224_DIGEST_LENGTH ;
 int SHA256_DIGEST_LENGTH ;
 int SHA_DIGEST_LENGTH ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

int dsa_builtin_paramgen(DSA *ret, size_t bits, size_t qbits,
                         const EVP_MD *evpmd, const unsigned char *seed_in,
                         size_t seed_len, unsigned char *seed_out,
                         int *counter_ret, unsigned long *h_ret, BN_GENCB *cb)
{
    int ok = 0;
    unsigned char seed[SHA256_DIGEST_LENGTH];
    unsigned char md[SHA256_DIGEST_LENGTH];
    unsigned char buf[SHA256_DIGEST_LENGTH], buf2[SHA256_DIGEST_LENGTH];
    BIGNUM *r0, *W, *X, *c, *test;
    BIGNUM *g = ((void*)0), *q = ((void*)0), *p = ((void*)0);
    BN_MONT_CTX *mont = ((void*)0);
    int i, k, n = 0, m = 0, qsize = qbits >> 3;
    int counter = 0;
    int r = 0;
    BN_CTX *ctx = ((void*)0);
    unsigned int h = 2;

    if (qsize != SHA_DIGEST_LENGTH && qsize != SHA224_DIGEST_LENGTH &&
        qsize != SHA256_DIGEST_LENGTH)

        return 0;

    if (evpmd == ((void*)0)) {
        if (qsize == SHA_DIGEST_LENGTH)
            evpmd = EVP_sha1();
        else if (qsize == SHA224_DIGEST_LENGTH)
            evpmd = EVP_sha224();
        else
            evpmd = EVP_sha256();
    } else {
        qsize = EVP_MD_size(evpmd);
    }

    if (bits < 512)
        bits = 512;

    bits = (bits + 63) / 64 * 64;

    if (seed_in != ((void*)0)) {
        if (seed_len < (size_t)qsize) {
            DSAerr(DSA_F_DSA_BUILTIN_PARAMGEN, DSA_R_SEED_LEN_SMALL);
            return 0;
        }
        if (seed_len > (size_t)qsize) {

            seed_len = qsize;
        }
        memcpy(seed, seed_in, seed_len);
    }

    if ((mont = BN_MONT_CTX_new()) == ((void*)0))
        goto err;

    if ((ctx = BN_CTX_new()) == ((void*)0))
        goto err;

    BN_CTX_start(ctx);

    r0 = BN_CTX_get(ctx);
    g = BN_CTX_get(ctx);
    W = BN_CTX_get(ctx);
    q = BN_CTX_get(ctx);
    X = BN_CTX_get(ctx);
    c = BN_CTX_get(ctx);
    p = BN_CTX_get(ctx);
    test = BN_CTX_get(ctx);

    if (test == ((void*)0))
        goto err;

    if (!BN_lshift(test, BN_value_one(), bits - 1))
        goto err;

    for (;;) {
        for (;;) {
            int use_random_seed = (seed_in == ((void*)0));


            if (!BN_GENCB_call(cb, 0, m++))
                goto err;

            if (use_random_seed) {
                if (RAND_bytes(seed, qsize) <= 0)
                    goto err;
            } else {

                seed_in = ((void*)0);
            }
            memcpy(buf, seed, qsize);
            memcpy(buf2, seed, qsize);

            for (i = qsize - 1; i >= 0; i--) {
                buf[i]++;
                if (buf[i] != 0)
                    break;
            }


            if (!EVP_Digest(seed, qsize, md, ((void*)0), evpmd, ((void*)0)))
                goto err;
            if (!EVP_Digest(buf, qsize, buf2, ((void*)0), evpmd, ((void*)0)))
                goto err;
            for (i = 0; i < qsize; i++)
                md[i] ^= buf2[i];


            md[0] |= 0x80;
            md[qsize - 1] |= 0x01;
            if (!BN_bin2bn(md, qsize, q))
                goto err;


            r = BN_check_prime(q, ctx, cb);
            if (r > 0)
                break;
            if (r != 0)
                goto err;



        }

        if (!BN_GENCB_call(cb, 2, 0))
            goto err;
        if (!BN_GENCB_call(cb, 3, 0))
            goto err;


        counter = 0;


        n = (bits - 1) / 160;

        for (;;) {
            if ((counter != 0) && !BN_GENCB_call(cb, 0, counter))
                goto err;


            BN_zero(W);

            for (k = 0; k <= n; k++) {



                for (i = qsize - 1; i >= 0; i--) {
                    buf[i]++;
                    if (buf[i] != 0)
                        break;
                }

                if (!EVP_Digest(buf, qsize, md, ((void*)0), evpmd, ((void*)0)))
                    goto err;


                if (!BN_bin2bn(md, qsize, r0))
                    goto err;
                if (!BN_lshift(r0, r0, (qsize << 3) * k))
                    goto err;
                if (!BN_add(W, W, r0))
                    goto err;
            }


            if (!BN_mask_bits(W, bits - 1))
                goto err;
            if (!BN_copy(X, W))
                goto err;
            if (!BN_add(X, X, test))
                goto err;


            if (!BN_lshift1(r0, q))
                goto err;
            if (!BN_mod(c, X, r0, ctx))
                goto err;
            if (!BN_sub(r0, c, BN_value_one()))
                goto err;
            if (!BN_sub(p, X, r0))
                goto err;


            if (BN_cmp(p, test) >= 0) {

                r = BN_check_prime(p, ctx, cb);
                if (r > 0)
                    goto end;
                if (r != 0)
                    goto err;
            }


            counter++;



            if (counter >= 4096)
                break;
        }
    }
 end:
    if (!BN_GENCB_call(cb, 2, 1))
        goto err;



    if (!BN_sub(test, p, BN_value_one()))
        goto err;
    if (!BN_div(r0, ((void*)0), test, q, ctx))
        goto err;

    if (!BN_set_word(test, h))
        goto err;
    if (!BN_MONT_CTX_set(mont, p, ctx))
        goto err;

    for (;;) {

        if (!BN_mod_exp_mont(g, test, r0, p, ctx, mont))
            goto err;
        if (!BN_is_one(g))
            break;
        if (!BN_add(test, test, BN_value_one()))
            goto err;
        h++;
    }

    if (!BN_GENCB_call(cb, 3, 1))
        goto err;

    ok = 1;
 err:
    if (ok) {
        BN_free(ret->p);
        BN_free(ret->q);
        BN_free(ret->g);
        ret->p = BN_dup(p);
        ret->q = BN_dup(q);
        ret->g = BN_dup(g);
        ret->dirty_cnt++;
        if (ret->p == ((void*)0) || ret->q == ((void*)0) || ret->g == ((void*)0)) {
            ok = 0;
            goto err;
        }
        if (counter_ret != ((void*)0))
            *counter_ret = counter;
        if (h_ret != ((void*)0))
            *h_ret = h;
        if (seed_out)
            memcpy(seed_out, seed, qsize);
    }
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    BN_MONT_CTX_free(mont);
    return ok;
}
