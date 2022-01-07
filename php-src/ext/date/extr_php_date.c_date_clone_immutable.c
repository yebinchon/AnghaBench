
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZVAL_OBJ (int *,int ) ;
 int Z_OBJ_P (int *) ;
 int date_object_clone_date (int ) ;

__attribute__((used)) static void date_clone_immutable(zval *object, zval *new_object)
{
 ZVAL_OBJ(new_object, date_object_clone_date(Z_OBJ_P(object)));
}
