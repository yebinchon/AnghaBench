
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TYPCATEGORY ;
typedef int Oid ;


 char TYPCATEGORY_INVALID ;
 int get_type_category_preferred (int ,char*,int*) ;

bool
IsPreferredType(TYPCATEGORY category, Oid type)
{
 char typcategory;
 bool typispreferred;

 get_type_category_preferred(type, &typcategory, &typispreferred);
 if (category == typcategory || category == TYPCATEGORY_INVALID)
  return typispreferred;
 else
  return 0;
}
