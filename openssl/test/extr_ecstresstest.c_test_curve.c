
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BIGNUM ;


 int BIO_printf (int ,char*) ;
 int BN_free (int *) ;
 int BN_hex2bn (int **,int ) ;
 int BN_print (int ,int *) ;
 int EC_GROUP_free (int *) ;
 int EC_GROUP_get0_generator (int *) ;
 int * EC_GROUP_new_by_curve_name (int ) ;
 int * EC_POINT_dup (int ,int *) ;
 int EC_POINT_free (int *) ;
 int NID_X9_62_prime256v1 ;
 int TEST_BN_eq (int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int bio_out ;
 int kP256DefaultResult ;
 int num_repeats ;
 scalar_t__ print_mode ;
 int * walk_curve (int *,int *,int ) ;

__attribute__((used)) static int test_curve(void)
{
    EC_GROUP *group = ((void*)0);
    EC_POINT *point = ((void*)0);
    BIGNUM *result = ((void*)0), *expected_result = ((void*)0);
    int ret = 0;





    if (!TEST_ptr(group = EC_GROUP_new_by_curve_name(NID_X9_62_prime256v1))
            || !TEST_ptr(point = EC_POINT_dup(EC_GROUP_get0_generator(group),
                                              group))
            || !TEST_ptr(result = walk_curve(group, point, num_repeats)))
        return 0;

    if (print_mode) {
        BN_print(bio_out, result);
        BIO_printf(bio_out, "\n");
        ret = 1;
    } else {
        if (!TEST_true(BN_hex2bn(&expected_result, kP256DefaultResult))
                || !TEST_ptr(expected_result)
                || !TEST_BN_eq(result, expected_result))
            goto err;
        ret = 1;
    }

err:
    EC_GROUP_free(group);
    EC_POINT_free(point);
    BN_free(result);
    BN_free(expected_result);
    return ret;
}
