
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_dir_entry ;


 scalar_t__ Z_PTR_P (int *) ;
 int free (int *) ;

__attribute__((used)) static void config_entry_dtor(zval *zv)
{
 free((php_dir_entry*)Z_PTR_P(zv));
}
