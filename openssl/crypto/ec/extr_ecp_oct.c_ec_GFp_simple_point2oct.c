
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int point_conversion_form_t ;
struct TYPE_5__ {int libctx; int * field; } ;
typedef int EC_POINT ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 size_t BN_bn2bin (int *,unsigned char*) ;
 scalar_t__ BN_is_odd (int *) ;
 size_t BN_num_bytes (int *) ;
 int EC_F_EC_GFP_SIMPLE_POINT2OCT ;
 int EC_POINT_get_affine_coordinates (TYPE_1__ const*,int const*,int *,int *,int *) ;
 scalar_t__ EC_POINT_is_at_infinity (TYPE_1__ const*,int const*) ;
 int EC_R_BUFFER_TOO_SMALL ;
 int EC_R_INVALID_FORM ;
 int ECerr (int ,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int POINT_CONVERSION_COMPRESSED ;
 int POINT_CONVERSION_HYBRID ;
 int POINT_CONVERSION_UNCOMPRESSED ;

size_t ec_GFp_simple_point2oct(const EC_GROUP *group, const EC_POINT *point,
                               point_conversion_form_t form,
                               unsigned char *buf, size_t len, BN_CTX *ctx)
{
    size_t ret;
    BN_CTX *new_ctx = ((void*)0);
    int used_ctx = 0;
    BIGNUM *x, *y;
    size_t field_len, i, skip;

    if ((form != POINT_CONVERSION_COMPRESSED)
        && (form != POINT_CONVERSION_UNCOMPRESSED)
        && (form != POINT_CONVERSION_HYBRID)) {
        ECerr(EC_F_EC_GFP_SIMPLE_POINT2OCT, EC_R_INVALID_FORM);
        goto err;
    }

    if (EC_POINT_is_at_infinity(group, point)) {

        if (buf != ((void*)0)) {
            if (len < 1) {
                ECerr(EC_F_EC_GFP_SIMPLE_POINT2OCT, EC_R_BUFFER_TOO_SMALL);
                return 0;
            }
            buf[0] = 0;
        }
        return 1;
    }


    field_len = BN_num_bytes(group->field);
    ret =
        (form ==
         POINT_CONVERSION_COMPRESSED) ? 1 + field_len : 1 + 2 * field_len;


    if (buf != ((void*)0)) {
        if (len < ret) {
            ECerr(EC_F_EC_GFP_SIMPLE_POINT2OCT, EC_R_BUFFER_TOO_SMALL);
            goto err;
        }

        if (ctx == ((void*)0)) {
            ctx = new_ctx = BN_CTX_new_ex(group->libctx);
            if (ctx == ((void*)0))
                return 0;
        }

        BN_CTX_start(ctx);
        used_ctx = 1;
        x = BN_CTX_get(ctx);
        y = BN_CTX_get(ctx);
        if (y == ((void*)0))
            goto err;

        if (!EC_POINT_get_affine_coordinates(group, point, x, y, ctx))
            goto err;

        if ((form == POINT_CONVERSION_COMPRESSED
             || form == POINT_CONVERSION_HYBRID) && BN_is_odd(y))
            buf[0] = form + 1;
        else
            buf[0] = form;

        i = 1;

        skip = field_len - BN_num_bytes(x);
        if (skip > field_len) {
            ECerr(EC_F_EC_GFP_SIMPLE_POINT2OCT, ERR_R_INTERNAL_ERROR);
            goto err;
        }
        while (skip > 0) {
            buf[i++] = 0;
            skip--;
        }
        skip = BN_bn2bin(x, buf + i);
        i += skip;
        if (i != 1 + field_len) {
            ECerr(EC_F_EC_GFP_SIMPLE_POINT2OCT, ERR_R_INTERNAL_ERROR);
            goto err;
        }

        if (form == POINT_CONVERSION_UNCOMPRESSED
            || form == POINT_CONVERSION_HYBRID) {
            skip = field_len - BN_num_bytes(y);
            if (skip > field_len) {
                ECerr(EC_F_EC_GFP_SIMPLE_POINT2OCT, ERR_R_INTERNAL_ERROR);
                goto err;
            }
            while (skip > 0) {
                buf[i++] = 0;
                skip--;
            }
            skip = BN_bn2bin(y, buf + i);
            i += skip;
        }

        if (i != ret) {
            ECerr(EC_F_EC_GFP_SIMPLE_POINT2OCT, ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (used_ctx)
        BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;

 err:
    if (used_ctx)
        BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return 0;
}
