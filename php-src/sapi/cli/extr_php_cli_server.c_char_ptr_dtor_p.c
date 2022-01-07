
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int pefree (int ,int) ;

__attribute__((used)) static void char_ptr_dtor_p(zval *zv)
{
 pefree(Z_PTR_P(zv), 1);
}
