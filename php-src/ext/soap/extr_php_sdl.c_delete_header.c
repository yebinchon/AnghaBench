
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int delete_header_int (int ) ;

__attribute__((used)) static void delete_header(zval *zv)
{
 delete_header_int(Z_PTR_P(zv));
}
