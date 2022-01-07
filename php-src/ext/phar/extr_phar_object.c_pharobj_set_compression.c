
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int HashTable ;


 int phar_set_compression ;
 int zend_hash_apply_with_argument (int *,int ,int *) ;

__attribute__((used)) static void pharobj_set_compression(HashTable *manifest, uint32_t compress)
{
 zend_hash_apply_with_argument(manifest, phar_set_compression, &compress);
}
