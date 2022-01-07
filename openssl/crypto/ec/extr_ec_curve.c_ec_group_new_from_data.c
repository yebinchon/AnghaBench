
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int nid; int const* (* meth ) () ;TYPE_4__* data; } ;
typedef TYPE_2__ ec_list_element ;
struct TYPE_20__ {int seed_len; int param_len; scalar_t__ field_type; scalar_t__ cofactor; } ;
struct TYPE_19__ {TYPE_1__* meth; } ;
struct TYPE_17__ {int (* group_set_curve ) (TYPE_3__*,int *,int *,int *,int *) ;} ;
typedef int OPENSSL_CTX ;
typedef int EC_POINT ;
typedef int const EC_METHOD ;
typedef TYPE_3__ EC_GROUP ;
typedef TYPE_4__ EC_CURVE_DATA ;
typedef int BN_ULONG ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new_ex (int *) ;
 int * BN_bin2bn (unsigned char const*,int,int *) ;
 int BN_free (int *) ;
 int BN_set_word (int *,int ) ;
 int EC_F_EC_GROUP_NEW_FROM_DATA ;
 int EC_GROUP_free (TYPE_3__*) ;
 TYPE_3__* EC_GROUP_new_curve_GF2m (int *,int *,int *,int *) ;
 TYPE_3__* EC_GROUP_new_curve_GFp (int *,int *,int *,int *) ;
 TYPE_3__* EC_GROUP_new_ex (int *,int const*) ;
 int EC_GROUP_set_curve_name (TYPE_3__*,int ) ;
 int EC_GROUP_set_generator (TYPE_3__*,int *,int *,int *) ;
 int EC_GROUP_set_seed (TYPE_3__*,unsigned char const*,int) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (TYPE_3__*) ;
 int EC_POINT_set_affine_coordinates (TYPE_3__*,int *,int *,int *,int *) ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ NID_X9_62_prime_field ;
 int const* stub1 () ;
 int const* stub2 () ;
 int stub3 (TYPE_3__*,int *,int *,int *,int *) ;

__attribute__((used)) static EC_GROUP *ec_group_new_from_data(OPENSSL_CTX *libctx,
                                        const ec_list_element curve)
{
    EC_GROUP *group = ((void*)0);
    EC_POINT *P = ((void*)0);
    BN_CTX *ctx = ((void*)0);
    BIGNUM *p = ((void*)0), *a = ((void*)0), *b = ((void*)0), *x = ((void*)0), *y = ((void*)0), *order =
        ((void*)0);
    int ok = 0;
    int seed_len, param_len;
    const EC_METHOD *meth;
    const EC_CURVE_DATA *data;
    const unsigned char *params;


    if (curve.data == ((void*)0))
        return EC_GROUP_new_ex(libctx,
                               curve.meth != ((void*)0) ? curve.meth() : ((void*)0));

    if ((ctx = BN_CTX_new_ex(libctx)) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    data = curve.data;
    seed_len = data->seed_len;
    param_len = data->param_len;
    params = (const unsigned char *)(data + 1);
    params += seed_len;

    if ((p = BN_bin2bn(params + 0 * param_len, param_len, ((void*)0))) == ((void*)0)
        || (a = BN_bin2bn(params + 1 * param_len, param_len, ((void*)0))) == ((void*)0)
        || (b = BN_bin2bn(params + 2 * param_len, param_len, ((void*)0))) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_BN_LIB);
        goto err;
    }

    if (curve.meth != 0) {
        meth = curve.meth();
        if (((group = EC_GROUP_new_ex(libctx, meth)) == ((void*)0)) ||
            (!(group->meth->group_set_curve(group, p, a, b, ctx)))) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
            goto err;
        }
    } else if (data->field_type == NID_X9_62_prime_field) {
        if ((group = EC_GROUP_new_curve_GFp(p, a, b, ctx)) == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
            goto err;
        }
    }

    else {


        if ((group = EC_GROUP_new_curve_GF2m(p, a, b, ctx)) == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
            goto err;
        }
    }


    EC_GROUP_set_curve_name(group, curve.nid);

    if ((P = EC_POINT_new(group)) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
        goto err;
    }

    if ((x = BN_bin2bn(params + 3 * param_len, param_len, ((void*)0))) == ((void*)0)
        || (y = BN_bin2bn(params + 4 * param_len, param_len, ((void*)0))) == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_BN_LIB);
        goto err;
    }
    if (!EC_POINT_set_affine_coordinates(group, P, x, y, ctx)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
        goto err;
    }
    if ((order = BN_bin2bn(params + 5 * param_len, param_len, ((void*)0))) == ((void*)0)
        || !BN_set_word(x, (BN_ULONG)data->cofactor)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_BN_LIB);
        goto err;
    }
    if (!EC_GROUP_set_generator(group, P, order, x)) {
        ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
        goto err;
    }
    if (seed_len) {
        if (!EC_GROUP_set_seed(group, params - seed_len, seed_len)) {
            ECerr(EC_F_EC_GROUP_NEW_FROM_DATA, ERR_R_EC_LIB);
            goto err;
        }
    }
    ok = 1;
 err:
    if (!ok) {
        EC_GROUP_free(group);
        group = ((void*)0);
    }
    EC_POINT_free(P);
    BN_CTX_free(ctx);
    BN_free(p);
    BN_free(a);
    BN_free(b);
    BN_free(order);
    BN_free(x);
    BN_free(y);
    return group;
}
