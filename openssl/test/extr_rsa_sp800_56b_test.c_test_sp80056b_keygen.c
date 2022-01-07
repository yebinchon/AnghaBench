
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;


 int RSA_free (int *) ;
 int * RSA_new () ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 int* keygen_size ;
 int rsa_sp800_56b_check_keypair (int *,int *,int,int) ;
 int rsa_sp800_56b_check_private (int *) ;
 int rsa_sp800_56b_check_public (int *) ;
 int rsa_sp800_56b_generate_key (int *,int,int *,int *) ;

__attribute__((used)) static int test_sp80056b_keygen(int id)
{
    RSA *key = ((void*)0);
    int ret;
    int sz = keygen_size[id];

    ret = TEST_ptr(key = RSA_new())
          && TEST_true(rsa_sp800_56b_generate_key(key, sz, ((void*)0), ((void*)0)))
          && TEST_true(rsa_sp800_56b_check_public(key))
          && TEST_true(rsa_sp800_56b_check_private(key))
          && TEST_true(rsa_sp800_56b_check_keypair(key, ((void*)0), -1, sz));

    RSA_free(key);
    return ret;
}
