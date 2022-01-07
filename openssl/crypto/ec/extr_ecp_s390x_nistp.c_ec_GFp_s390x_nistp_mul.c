
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int param ;
struct TYPE_11__ {TYPE_1__* meth; int libctx; } ;
struct TYPE_10__ {int (* point_get_affine_coordinates ) (TYPE_2__ const*,int const*,int const*,int const*,int *) ;int (* point_set_affine_coordinates ) (TYPE_2__ const*,int *,int const*,int const*,int *) ;} ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int const* BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 int * BN_bin2bn (unsigned char*,int,int const*) ;
 int BN_bn2binpad (int const*,unsigned char*,int) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int * EC_GROUP_get0_generator (TYPE_2__ const*) ;
 int EC_POINT_is_at_infinity (TYPE_2__ const*,int const*) ;
 int EC_POINT_set_to_infinity (TYPE_2__ const*,int *) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int S390X_OFF_RES_X (int) ;
 int S390X_OFF_RES_Y (int) ;
 int S390X_OFF_SCALAR (int) ;
 int S390X_OFF_SRC_X (int) ;
 int S390X_OFF_SRC_Y (int) ;
 int S390X_SIZE_PARAM ;
 int ec_wNAF_mul (TYPE_2__ const*,int *,int const*,size_t,int const**,int const**,int *) ;
 int memset (unsigned char**,int ,int) ;
 scalar_t__ s390x_pcc (unsigned int,unsigned char*) ;
 int stub1 (TYPE_2__ const*,int const*,int const*,int const*,int *) ;
 int stub2 (TYPE_2__ const*,int *,int const*,int const*,int *) ;

__attribute__((used)) static int ec_GFp_s390x_nistp_mul(const EC_GROUP *group, EC_POINT *r,
                                  const BIGNUM *scalar,
                                  size_t num, const EC_POINT *points[],
                                  const BIGNUM *scalars[],
                                  BN_CTX *ctx, unsigned int fc, int len)
{
    unsigned char param[S390X_SIZE_PARAM];
    BIGNUM *x, *y;
    const EC_POINT *point_ptr = ((void*)0);
    const BIGNUM *scalar_ptr = ((void*)0);
    BN_CTX *new_ctx = ((void*)0);
    int rc = -1;

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new_ex(group->libctx);
        if (ctx == ((void*)0))
            return 0;
    }

    BN_CTX_start(ctx);

    x = BN_CTX_get(ctx);
    y = BN_CTX_get(ctx);
    if (x == ((void*)0) || y == ((void*)0)) {
        rc = 0;
        goto ret;
    }






    if ((scalar != ((void*)0) && num == 0 && BN_is_negative(scalar) == 0)
        || (scalar == ((void*)0) && num == 1 && BN_is_negative(scalars[0]) == 0)) {

        if (num == 0) {
            point_ptr = EC_GROUP_get0_generator(group);
            scalar_ptr = scalar;
        } else {
            point_ptr = points[0];
            scalar_ptr = scalars[0];
        }

        if (EC_POINT_is_at_infinity(group, point_ptr) == 1
            || BN_is_zero(scalar_ptr)) {
            rc = EC_POINT_set_to_infinity(group, r);
            goto ret;
        }

        memset(&param, 0, sizeof(param));

        if (group->meth->point_get_affine_coordinates(group, point_ptr,
                                                      x, y, ctx) != 1
            || BN_bn2binpad(x, param + S390X_OFF_SRC_X(len), len) == -1
            || BN_bn2binpad(y, param + S390X_OFF_SRC_Y(len), len) == -1
            || BN_bn2binpad(scalar_ptr,
                            param + S390X_OFF_SCALAR(len), len) == -1
            || s390x_pcc(fc, param) != 0
            || BN_bin2bn(param + S390X_OFF_RES_X(len), len, x) == ((void*)0)
            || BN_bin2bn(param + S390X_OFF_RES_Y(len), len, y) == ((void*)0)
            || group->meth->point_set_affine_coordinates(group, r,
                                                         x, y, ctx) != 1)
            goto ret;

        rc = 1;
    }

ret:

    if (rc == -1)
        rc = ec_wNAF_mul(group, r, scalar, num, points, scalars, ctx);
    OPENSSL_cleanse(param + S390X_OFF_SCALAR(len), len);
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return rc;
}
