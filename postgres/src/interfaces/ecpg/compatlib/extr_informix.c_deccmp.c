
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal ;


 int PGTYPESnumeric_cmp ;
 int deccall2 (int *,int *,int ) ;

int
deccmp(decimal *arg1, decimal *arg2)
{
 return deccall2(arg1, arg2, PGTYPESnumeric_cmp);
}
