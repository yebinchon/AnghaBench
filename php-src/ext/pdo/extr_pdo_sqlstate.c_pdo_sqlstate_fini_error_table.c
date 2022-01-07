
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err_hash ;
 int zend_hash_destroy (int *) ;

void pdo_sqlstate_fini_error_table(void)
{
 zend_hash_destroy(&err_hash);
}
