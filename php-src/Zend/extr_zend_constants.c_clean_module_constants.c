
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EG (int ) ;
 int clean_module_constant ;
 int zend_constants ;
 int zend_hash_apply_with_argument (int ,int ,void*) ;

void clean_module_constants(int module_number)
{
 zend_hash_apply_with_argument(EG(zend_constants), clean_module_constant, (void *) &module_number);
}
