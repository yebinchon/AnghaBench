
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRBG_SELFTEST_DATA ;


 int * drbg_test ;
 scalar_t__ error_check (int *) ;

__attribute__((used)) static int test_error_checks(int i)
{
    DRBG_SELFTEST_DATA *td = &drbg_test[i];
    int rv = 0;

    if (error_check(td))
        goto err;
    rv = 1;

err:
    return rv;
}
