
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e; int query; int defn; } ;
typedef int OSSL_PROPERTY_LIST ;
typedef int OSSL_METHOD_STORE ;


 scalar_t__ TEST_int_eq (int ,int ) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ add_property_names (char*,char*,char*,char*,char*,char*,int *) ;
 int ossl_method_store_free (int *) ;
 int * ossl_method_store_new (int *) ;
 int * ossl_parse_property (int *,int ) ;
 int * ossl_parse_query (int *,int ) ;
 int ossl_property_free (int *) ;
 int ossl_property_match_count (int *,int *) ;
 TYPE_1__* parser_tests ;

__attribute__((used)) static int test_property_parse(int n)
{
    OSSL_METHOD_STORE *store;
    OSSL_PROPERTY_LIST *p = ((void*)0), *q = ((void*)0);
    int r = 0;

    if (TEST_ptr(store = ossl_method_store_new(((void*)0)))
        && add_property_names("sky", "groan", "cold", "today", "tomorrow", "n",
                              ((void*)0))
        && TEST_ptr(p = ossl_parse_property(((void*)0), parser_tests[n].defn))
        && TEST_ptr(q = ossl_parse_query(((void*)0), parser_tests[n].query))
        && TEST_int_eq(ossl_property_match_count(q, p), parser_tests[n].e))
        r = 1;
    ossl_property_free(p);
    ossl_property_free(q);
    ossl_method_store_free(store);
    return r;
}
