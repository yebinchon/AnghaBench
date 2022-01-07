
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t blocksize; size_t numblocks; size_t w; size_t num; int const** points; int * group; } ;
typedef TYPE_1__ EC_PRE_COMP ;
typedef int const EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_is_zero (int const*) ;
 size_t BN_num_bits (int const*) ;
 int EC_F_EC_WNAF_PRECOMPUTE_MULT ;
 int const* EC_GROUP_get0_generator (int *) ;
 int * EC_GROUP_get0_order (int *) ;
 int EC_POINT_add (int *,int const*,int const*,int const*,int *) ;
 int EC_POINT_copy (int const*,int const*) ;
 int EC_POINT_dbl (int *,int const*,int const*,int *) ;
 int EC_POINT_free (int const*) ;
 int const* EC_POINT_new (int *) ;
 int EC_POINTs_make_affine (int *,size_t,int const**,int *) ;
 int EC_R_UNDEFINED_GENERATOR ;
 int EC_R_UNKNOWN_ORDER ;
 int EC_ec_pre_comp_free (TYPE_1__*) ;
 int EC_pre_comp_free (int *) ;
 size_t EC_window_bits_for_scalar_size (size_t) ;
 int ECerr (int ,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int const**) ;
 int const** OPENSSL_malloc (int) ;
 int SETPRECOMP (int *,int ,TYPE_1__*) ;
 int ec ;
 TYPE_1__* ec_pre_comp_new (int *) ;

int ec_wNAF_precompute_mult(EC_GROUP *group, BN_CTX *ctx)
{
    const EC_POINT *generator;
    EC_POINT *tmp_point = ((void*)0), *base = ((void*)0), **var;
    const BIGNUM *order;
    size_t i, bits, w, pre_points_per_block, blocksize, numblocks, num;
    EC_POINT **points = ((void*)0);
    EC_PRE_COMP *pre_comp;
    int ret = 0;

    BN_CTX *new_ctx = ((void*)0);



    EC_pre_comp_free(group);
    if ((pre_comp = ec_pre_comp_new(group)) == ((void*)0))
        return 0;

    generator = EC_GROUP_get0_generator(group);
    if (generator == ((void*)0)) {
        ECerr(EC_F_EC_WNAF_PRECOMPUTE_MULT, EC_R_UNDEFINED_GENERATOR);
        goto err;
    }


    if (ctx == ((void*)0))
        ctx = new_ctx = BN_CTX_new();

    if (ctx == ((void*)0))
        goto err;

    BN_CTX_start(ctx);

    order = EC_GROUP_get0_order(group);
    if (order == ((void*)0))
        goto err;
    if (BN_is_zero(order)) {
        ECerr(EC_F_EC_WNAF_PRECOMPUTE_MULT, EC_R_UNKNOWN_ORDER);
        goto err;
    }

    bits = BN_num_bits(order);






    blocksize = 8;
    w = 4;
    if (EC_window_bits_for_scalar_size(bits) > w) {

        w = EC_window_bits_for_scalar_size(bits);
    }

    numblocks = (bits + blocksize - 1) / blocksize;



    pre_points_per_block = (size_t)1 << (w - 1);
    num = pre_points_per_block * numblocks;


    points = OPENSSL_malloc(sizeof(*points) * (num + 1));
    if (points == ((void*)0)) {
        ECerr(EC_F_EC_WNAF_PRECOMPUTE_MULT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    var = points;
    var[num] = ((void*)0);
    for (i = 0; i < num; i++) {
        if ((var[i] = EC_POINT_new(group)) == ((void*)0)) {
            ECerr(EC_F_EC_WNAF_PRECOMPUTE_MULT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    if ((tmp_point = EC_POINT_new(group)) == ((void*)0)
        || (base = EC_POINT_new(group)) == ((void*)0)) {
        ECerr(EC_F_EC_WNAF_PRECOMPUTE_MULT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (!EC_POINT_copy(base, generator))
        goto err;


    for (i = 0; i < numblocks; i++) {
        size_t j;

        if (!EC_POINT_dbl(group, tmp_point, base, ctx))
            goto err;

        if (!EC_POINT_copy(*var++, base))
            goto err;

        for (j = 1; j < pre_points_per_block; j++, var++) {



            if (!EC_POINT_add(group, *var, tmp_point, *(var - 1), ctx))
                goto err;
        }

        if (i < numblocks - 1) {



            size_t k;

            if (blocksize <= 2) {
                ECerr(EC_F_EC_WNAF_PRECOMPUTE_MULT, ERR_R_INTERNAL_ERROR);
                goto err;
            }

            if (!EC_POINT_dbl(group, base, tmp_point, ctx))
                goto err;
            for (k = 2; k < blocksize; k++) {
                if (!EC_POINT_dbl(group, base, base, ctx))
                    goto err;
            }
        }
    }

    if (!EC_POINTs_make_affine(group, num, points, ctx))
        goto err;

    pre_comp->group = group;
    pre_comp->blocksize = blocksize;
    pre_comp->numblocks = numblocks;
    pre_comp->w = w;
    pre_comp->points = points;
    points = ((void*)0);
    pre_comp->num = num;
    SETPRECOMP(group, ec, pre_comp);
    pre_comp = ((void*)0);
    ret = 1;

 err:
    BN_CTX_end(ctx);

    BN_CTX_free(new_ctx);

    EC_ec_pre_comp_free(pre_comp);
    if (points) {
        EC_POINT **p;

        for (p = points; *p != ((void*)0); p++)
            EC_POINT_free(*p);
        OPENSSL_free(points);
    }
    EC_POINT_free(tmp_point);
    EC_POINT_free(base);
    return ret;
}
