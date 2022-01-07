
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUCCESS ;
 int func_info ;
 int zend_func_info_rid ;
 int zend_hash_destroy (int *) ;

int zend_func_info_shutdown(void)
{
 if (zend_func_info_rid != -1) {
  zend_hash_destroy(&func_info);
  zend_func_info_rid = -1;
 }
 return SUCCESS;
}
