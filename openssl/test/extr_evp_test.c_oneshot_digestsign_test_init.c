
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_TEST ;


 int digestsigver_test_init (int *,char const*,int ,int) ;

__attribute__((used)) static int oneshot_digestsign_test_init(EVP_TEST *t, const char *alg)
{
    return digestsigver_test_init(t, alg, 0, 1);
}
