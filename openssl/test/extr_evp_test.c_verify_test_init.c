
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_TEST ;


 int EVP_PKEY_verify_init ;
 int pkey_test_init (int *,char const*,int,int ,int ) ;

__attribute__((used)) static int verify_test_init(EVP_TEST *t, const char *name)
{
    return pkey_test_init(t, name, 1, EVP_PKEY_verify_init, 0);
}
