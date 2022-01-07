
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeName ;


 int list_make1 (int ) ;
 int makeString (char*) ;
 int * makeTypeNameFromNameList (int ) ;

TypeName *
makeTypeName(char *typnam)
{
 return makeTypeNameFromNameList(list_make1(makeString(typnam)));
}
