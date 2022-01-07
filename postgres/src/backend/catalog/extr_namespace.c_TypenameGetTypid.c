
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int TypenameGetTypidExtended (char const*,int) ;

Oid
TypenameGetTypid(const char *typname)
{
 return TypenameGetTypidExtended(typname, 1);
}
