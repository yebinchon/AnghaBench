
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_function_entry ;
typedef int pdo_dbh_t ;



 int const* dbh_methods ;

__attribute__((used)) static const zend_function_entry *get_driver_methods(pdo_dbh_t *dbh, int kind)
{
 switch (kind) {
  case 128:
   return dbh_methods;

  default:
   return ((void*)0);
 }
}
