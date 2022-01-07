
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EG (int ) ;
 int SUCCESS ;
 int free (int ) ;
 int zend_constants ;
 int zend_hash_destroy (int ) ;

int zend_shutdown_constants(void)
{
 zend_hash_destroy(EG(zend_constants));
 free(EG(zend_constants));
 return SUCCESS;
}
