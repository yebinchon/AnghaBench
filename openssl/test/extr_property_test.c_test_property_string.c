
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OSSL_PROPERTY_IDX ;
typedef int OSSL_METHOD_STORE ;


 scalar_t__ TEST_int_eq (scalar_t__,scalar_t__) ;
 scalar_t__ TEST_int_ne (scalar_t__,scalar_t__) ;
 scalar_t__ TEST_ptr (int *) ;
 int ossl_method_store_free (int *) ;
 int * ossl_method_store_new (int *) ;
 scalar_t__ ossl_property_name (int *,char*,int) ;
 scalar_t__ ossl_property_value (int *,char*,int) ;

__attribute__((used)) static int test_property_string(void)
{
    OSSL_METHOD_STORE *store;
    int res = 0;
    OSSL_PROPERTY_IDX i, j;

    if (TEST_ptr(store = ossl_method_store_new(((void*)0)))
        && TEST_int_eq(ossl_property_name(((void*)0), "fnord", 0), 0)
        && TEST_int_ne(ossl_property_name(((void*)0), "fnord", 1), 0)
        && TEST_int_ne(ossl_property_name(((void*)0), "name", 1), 0)

        && TEST_int_eq(ossl_property_value(((void*)0), "fnord", 0), 0)
        && TEST_int_ne(i = ossl_property_value(((void*)0), "no", 0), 0)
        && TEST_int_ne(j = ossl_property_value(((void*)0), "yes", 0), 0)
        && TEST_int_ne(i, j)
        && TEST_int_eq(ossl_property_value(((void*)0), "yes", 1), j)
        && TEST_int_eq(ossl_property_value(((void*)0), "no", 1), i)
        && TEST_int_ne(i = ossl_property_value(((void*)0), "illuminati", 1), 0)
        && TEST_int_eq(j = ossl_property_value(((void*)0), "fnord", 1), i + 1)
        && TEST_int_eq(ossl_property_value(((void*)0), "fnord", 1), j)

        && TEST_int_eq(ossl_property_value(((void*)0), "cold", 0), 0)
        && TEST_int_ne(ossl_property_name(((void*)0), "fnord", 0),
                       ossl_property_value(((void*)0), "fnord", 0)))
        res = 1;
    ossl_method_store_free(store);
    return res;
}
