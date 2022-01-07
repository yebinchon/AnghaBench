
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int TEST_ptr (int ) ;
 int X509_from_strings (int ) ;
 int kCRLTestLeaf ;
 int kCRLTestRoot ;
 int test_bad_issuer_crl ;
 int test_basic_crl ;
 int test_known_critical_crl ;
 int test_leaf ;
 int test_no_crl ;
 int test_reuse_crl ;
 int test_root ;
 int test_unknown_critical_crl ;
 int unknown_critical_crls ;

int setup_tests(void)
{
    if (!TEST_ptr(test_root = X509_from_strings(kCRLTestRoot))
        || !TEST_ptr(test_leaf = X509_from_strings(kCRLTestLeaf)))
        return 0;

    ADD_TEST(test_no_crl);
    ADD_TEST(test_basic_crl);
    ADD_TEST(test_bad_issuer_crl);
    ADD_TEST(test_known_critical_crl);
    ADD_ALL_TESTS(test_unknown_critical_crl, OSSL_NELEM(unknown_critical_crls));
    ADD_TEST(test_reuse_crl);
    return 1;
}
