
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q_local; int q_global; int prop; } ;
typedef int OSSL_PROPERTY_LIST ;
typedef int OSSL_METHOD_STORE ;


 scalar_t__ TEST_int_ge (int ,int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ add_property_names (char*,char*,char*,char*,char*,char*,int *) ;
 TYPE_1__* merge_tests ;
 int ossl_method_store_free (int *) ;
 int * ossl_method_store_new (int *) ;
 int * ossl_parse_property (int *,int ) ;
 int * ossl_parse_query (int *,int ) ;
 int ossl_property_free (int *) ;
 int ossl_property_match_count (int *,int *) ;
 int * ossl_property_merge (int *,int *) ;

__attribute__((used)) static int test_property_merge(int n)
{
    OSSL_METHOD_STORE *store;
    OSSL_PROPERTY_LIST *q_global = ((void*)0), *q_local = ((void*)0);
    OSSL_PROPERTY_LIST *q_combined = ((void*)0), *prop = ((void*)0);
    int r = 0;

    if (TEST_ptr(store = ossl_method_store_new(((void*)0)))
        && add_property_names("colour", "urn", "clouds", "pot", "day", "night",
                              ((void*)0))
        && TEST_ptr(prop = ossl_parse_property(((void*)0), merge_tests[n].prop))
        && TEST_ptr(q_global = ossl_parse_query(((void*)0), merge_tests[n].q_global))
        && TEST_ptr(q_local = ossl_parse_query(((void*)0), merge_tests[n].q_local))
        && TEST_ptr(q_combined = ossl_property_merge(q_local, q_global))
        && TEST_int_ge(ossl_property_match_count(q_combined, prop), 0))
        r = 1;
    ossl_property_free(q_global);
    ossl_property_free(q_local);
    ossl_property_free(q_combined);
    ossl_property_free(prop);
    ossl_method_store_free(store);
    return r;
}
