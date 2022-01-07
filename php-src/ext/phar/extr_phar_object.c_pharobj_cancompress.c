
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashTable ;


 int phar_test_compression ;
 int zend_hash_apply_with_argument (int *,int ,int*) ;

__attribute__((used)) static int pharobj_cancompress(HashTable *manifest)
{
 int test;

 test = 1;
 zend_hash_apply_with_argument(manifest, phar_test_compression, &test);
 return test;
}
