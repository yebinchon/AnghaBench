
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conv_form; int pub_key; int group; } ;
typedef TYPE_1__ EC_KEY ;


 int EC_F_I2O_ECPUBLICKEY ;
 size_t EC_POINT_point2oct (int ,int ,int ,unsigned char*,size_t,int *) ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;

int i2o_ECPublicKey(const EC_KEY *a, unsigned char **out)
{
    size_t buf_len = 0;
    int new_buffer = 0;

    if (a == ((void*)0)) {
        ECerr(EC_F_I2O_ECPUBLICKEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    buf_len = EC_POINT_point2oct(a->group, a->pub_key,
                                 a->conv_form, ((void*)0), 0, ((void*)0));

    if (out == ((void*)0) || buf_len == 0)

        return buf_len;

    if (*out == ((void*)0)) {
        if ((*out = OPENSSL_malloc(buf_len)) == ((void*)0)) {
            ECerr(EC_F_I2O_ECPUBLICKEY, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        new_buffer = 1;
    }
    if (!EC_POINT_point2oct(a->group, a->pub_key, a->conv_form,
                            *out, buf_len, ((void*)0))) {
        ECerr(EC_F_I2O_ECPUBLICKEY, ERR_R_EC_LIB);
        if (new_buffer) {
            OPENSSL_free(*out);
            *out = ((void*)0);
        }
        return 0;
    }
    if (!new_buffer)
        *out += buf_len;
    return buf_len;
}
