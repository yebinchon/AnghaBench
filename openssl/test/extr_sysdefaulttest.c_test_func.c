
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSL_CTX_get_max_proto_version (int ) ;
 int SSL_CTX_get_min_proto_version (int ) ;
 int TEST_info (char*) ;
 int TEST_int_eq (int ,int ) ;
 int TLS1_2_VERSION ;
 int ctx ;

__attribute__((used)) static int test_func(void)
{
    if (!TEST_int_eq(SSL_CTX_get_min_proto_version(ctx), TLS1_2_VERSION)
        && !TEST_int_eq(SSL_CTX_get_max_proto_version(ctx), TLS1_2_VERSION)) {
        TEST_info("min/max version setting incorrect");
        return 0;
    }
    return 1;
}
