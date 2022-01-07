
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdo_driver_t ;


 int pdo_driver_hash ;
 int * zend_hash_str_find_ptr (int *,char*,int) ;

pdo_driver_t *pdo_find_driver(const char *name, int namelen)
{
 return zend_hash_str_find_ptr(&pdo_driver_hash, (char*)name, namelen);
}
