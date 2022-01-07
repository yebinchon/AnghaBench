
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int phar_zip_changed_apply_int (int ,void*) ;

__attribute__((used)) static int phar_zip_changed_apply(zval *zv, void *arg)
{
 return phar_zip_changed_apply_int(Z_PTR_P(zv), arg);
}
