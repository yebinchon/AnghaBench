
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X509_free (int ) ;
 int test_leaf ;
 int test_root ;

void cleanup_tests(void)
{
    X509_free(test_root);
    X509_free(test_leaf);
}
