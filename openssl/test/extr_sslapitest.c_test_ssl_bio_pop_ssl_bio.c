
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_BIO_CHANGE ;
 int execute_test_ssl_bio (int,int ) ;

__attribute__((used)) static int test_ssl_bio_pop_ssl_bio(void)
{
    return execute_test_ssl_bio(1, NO_BIO_CHANGE);
}
