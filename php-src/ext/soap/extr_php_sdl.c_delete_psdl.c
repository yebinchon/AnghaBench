
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int delete_psdl_int (int ) ;
 int free (int ) ;

__attribute__((used)) static void delete_psdl(zval *zv)
{
 delete_psdl_int(Z_PTR_P(zv));
 free(Z_PTR_P(zv));
}
