
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int definition_tests ;
 int merge_tests ;
 int parser_tests ;
 int test_definition_compares ;
 int test_property ;
 int test_property_defn_cache ;
 int test_property_merge ;
 int test_property_parse ;
 int test_property_string ;
 int test_query_cache_stochastic ;
 int test_register_deregister ;

int setup_tests(void)
{
    ADD_TEST(test_property_string);
    ADD_ALL_TESTS(test_property_parse, OSSL_NELEM(parser_tests));
    ADD_ALL_TESTS(test_property_merge, OSSL_NELEM(merge_tests));
    ADD_TEST(test_property_defn_cache);
    ADD_ALL_TESTS(test_definition_compares, OSSL_NELEM(definition_tests));
    ADD_TEST(test_register_deregister);
    ADD_TEST(test_property);
    ADD_TEST(test_query_cache_stochastic);
    return 1;
}
