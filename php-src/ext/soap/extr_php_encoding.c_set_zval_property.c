
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_OBJCE_P (int *) ;
 int Z_TRY_DELREF_P (int *) ;
 int strlen (char*) ;
 int zend_update_property (int ,int *,char*,int ,int *) ;

__attribute__((used)) static void set_zval_property(zval* object, char* name, zval* val)
{
 zend_update_property(Z_OBJCE_P(object), object, name, strlen(name), val);
 Z_TRY_DELREF_P(val);
}
