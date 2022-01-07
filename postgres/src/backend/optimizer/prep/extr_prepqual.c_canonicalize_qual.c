
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int Assert (int) ;
 int IsA (int *,int ) ;
 int List ;
 int * find_duplicate_ors (int *,int) ;

Expr *
canonicalize_qual(Expr *qual, bool is_check)
{
 Expr *newqual;


 if (qual == ((void*)0))
  return ((void*)0);


 Assert(!IsA(qual, List));






 newqual = find_duplicate_ors(qual, is_check);

 return newqual;
}
