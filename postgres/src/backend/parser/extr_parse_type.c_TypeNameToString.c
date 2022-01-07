
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendTypeNameToBuffer (int const*,TYPE_1__*) ;
 int initStringInfo (TYPE_1__*) ;

char *
TypeNameToString(const TypeName *typeName)
{
 StringInfoData string;

 initStringInfo(&string);
 appendTypeNameToBuffer(typeName, &string);
 return string.data;
}
