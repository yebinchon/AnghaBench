
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TYPCATEGORY ;
typedef int Oid ;


 int Assert (int) ;
 char TYPCATEGORY_INVALID ;
 int get_type_category_preferred (int ,char*,int*) ;

TYPCATEGORY
TypeCategory(Oid type)
{
 char typcategory;
 bool typispreferred;

 get_type_category_preferred(type, &typcategory, &typispreferred);
 Assert(typcategory != TYPCATEGORY_INVALID);
 return (TYPCATEGORY) typcategory;
}
