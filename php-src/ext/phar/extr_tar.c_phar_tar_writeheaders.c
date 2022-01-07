
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int phar_tar_writeheaders_int (int ,void*) ;

__attribute__((used)) static int phar_tar_writeheaders(zval *zv, void *argument)
{
 return phar_tar_writeheaders_int(Z_PTR_P(zv), argument);
}
