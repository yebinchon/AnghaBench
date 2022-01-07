
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint32_t ;
typedef int HashTable ;


 int SUCCESS ;
 int ZVAL_NULL (int *) ;
 int zend_hash_str_update (int *,char*,int ,int *) ;

__attribute__((used)) static int phar_add_empty(HashTable *ht, char *arKey, uint32_t nKeyLength)
{
 zval dummy;

 ZVAL_NULL(&dummy);
 zend_hash_str_update(ht, arKey, nKeyLength, &dummy);
 return SUCCESS;
}
