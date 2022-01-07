
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double* data; } ;
typedef TYPE_1__ OSSL_PARAM ;


 TYPE_1__ OSSL_PARAM_double (char*,int *) ;
 int OSSL_PARAM_set_double (TYPE_1__*,double) ;
 scalar_t__ TEST_double_eq (double,double) ;
 scalar_t__ TEST_true (int ) ;

__attribute__((used)) static int test_param_real(void)
{
    double p;
    OSSL_PARAM param = OSSL_PARAM_double("r", ((void*)0));

    param.data = &p;
    return TEST_true(OSSL_PARAM_set_double(&param, 3.14159))
           && TEST_double_eq(p, 3.14159);
}
