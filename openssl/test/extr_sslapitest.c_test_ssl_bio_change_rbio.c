
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHANGE_RBIO ;
 int execute_test_ssl_bio (int ,int ) ;

__attribute__((used)) static int test_ssl_bio_change_rbio(void)
{
    return execute_test_ssl_bio(0, CHANGE_RBIO);
}
