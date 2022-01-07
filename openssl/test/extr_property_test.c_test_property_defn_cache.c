
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROPERTY_LIST ;
typedef int OSSL_METHOD_STORE ;


 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_ptr_eq (int ,int *) ;
 scalar_t__ TEST_ptr_ne (int *,int *) ;
 scalar_t__ TEST_true (int ) ;
 scalar_t__ add_property_names (char*,char*,int *) ;
 int ossl_method_store_free (int *) ;
 int * ossl_method_store_new (int *) ;
 int * ossl_parse_property (int *,char*) ;
 int ossl_prop_defn_get (int *,char*) ;
 int ossl_prop_defn_set (int *,char*,int *) ;

__attribute__((used)) static int test_property_defn_cache(void)
{
    OSSL_METHOD_STORE *store;
    OSSL_PROPERTY_LIST *red, *blue;
    int r = 0;

    if (TEST_ptr(store = ossl_method_store_new(((void*)0)))
        && add_property_names("red", "blue", ((void*)0))
        && TEST_ptr(red = ossl_parse_property(((void*)0), "red"))
        && TEST_ptr(blue = ossl_parse_property(((void*)0), "blue"))
        && TEST_ptr_ne(red, blue)
        && TEST_true(ossl_prop_defn_set(((void*)0), "red", red))
        && TEST_true(ossl_prop_defn_set(((void*)0), "blue", blue))
        && TEST_ptr_eq(ossl_prop_defn_get(((void*)0), "red"), red)
        && TEST_ptr_eq(ossl_prop_defn_get(((void*)0), "blue"), blue))
        r = 1;
    ossl_method_store_free(store);
    return r;
}
