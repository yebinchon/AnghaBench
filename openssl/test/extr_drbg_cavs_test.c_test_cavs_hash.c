
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drbg_hash_test ;
 int test_cavs_kats (int ,int) ;

__attribute__((used)) static int test_cavs_hash(int i)
{
    return test_cavs_kats(drbg_hash_test, i);
}
