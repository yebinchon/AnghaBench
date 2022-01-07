
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 int * EVP_PKEY_meth_get0 (size_t) ;
 int EVP_PKEY_meth_get0_info (int*,int *,int const*) ;
 size_t EVP_PKEY_meth_get_count () ;
 int OBJ_nid2ln (int) ;
 int TEST_error (char*) ;
 int TEST_note (char*,int,int ) ;

__attribute__((used)) static int test_pkey_meths(void)
{
    size_t i;
    int prev = -1;
    int good = 1;
    int pkey_id;
    const EVP_PKEY_METHOD *pmeth;

    for (i = 0; i < EVP_PKEY_meth_get_count(); i++) {
        pmeth = EVP_PKEY_meth_get0(i);
        EVP_PKEY_meth_get0_info(&pkey_id, ((void*)0), pmeth);
        if (pkey_id < prev)
            good = 0;
        prev = pkey_id;

    }
    if (!good) {
        TEST_error("EVP_PKEY_METHOD table out of order");
        for (i = 0; i < EVP_PKEY_meth_get_count(); i++) {
            pmeth = EVP_PKEY_meth_get0(i);
            EVP_PKEY_meth_get0_info(&pkey_id, ((void*)0), pmeth);
            TEST_note("%d : %s", pkey_id, OBJ_nid2ln(pkey_id));
        }
    }
    return good;
}
