
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int php_dir_entry ;


 int ZVAL_PTR (int *,int *) ;
 scalar_t__ Z_PTR_P (int *) ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;

void config_entry_ctor(zval *zv)
{
 php_dir_entry *pe = (php_dir_entry*)Z_PTR_P(zv);
 php_dir_entry *npe = malloc(sizeof(php_dir_entry));

 memcpy(npe, pe, sizeof(php_dir_entry));
 ZVAL_PTR(zv, npe);
}
