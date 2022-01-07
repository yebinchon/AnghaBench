
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_error_t ;
typedef int zend_long ;
struct zip {int dummy; } ;


 int zip_error_code_zip (int *) ;
 int zip_error_fini (int *) ;
 int zip_error_get (struct zip*,int*,int*) ;
 int * zip_get_error (struct zip*) ;

__attribute__((used)) static zend_long php_zip_status(struct zip *za)
{

 int zep, syp;

 zip_error_get(za, &zep, &syp);
 return zep;
}
