
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int delete_model_persistent_int (int ) ;

void delete_model_persistent(zval *zv)
{
 delete_model_persistent_int(Z_PTR_P(zv));
}
