
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int free (int ) ;

__attribute__((used)) static void mime_type_dtor(zval *zv)
{
 free(Z_PTR_P(zv));
}
