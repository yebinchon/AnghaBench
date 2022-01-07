
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbg_kat {int flags; int type; } ;





 int TEST_skip (char*) ;
 int USE_DF ;
 int single_kat_no_reseed (struct drbg_kat const*) ;
 int single_kat_pr_false (struct drbg_kat const*) ;
 int single_kat_pr_true (struct drbg_kat const*) ;

__attribute__((used)) static int test_cavs_kats(const struct drbg_kat *test[], int i)
{
    const struct drbg_kat *td = test[i];
    int rv = 0;







    switch (td->type) {
    case 130:
        if (!single_kat_no_reseed(td))
            goto err;
        break;
    case 129:
        if (!single_kat_pr_false(td))
            goto err;
        break;
    case 128:
        if (!single_kat_pr_true(td))
            goto err;
        break;
    default:
        goto err;
    }
    rv = 1;
err:
    return rv;
}
