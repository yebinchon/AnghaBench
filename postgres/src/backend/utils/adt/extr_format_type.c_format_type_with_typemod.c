
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;


 int FORMAT_TYPE_TYPEMOD_GIVEN ;
 char* format_type_extended (int ,int ,int ) ;

char *
format_type_with_typemod(Oid type_oid, int32 typemod)
{
 return format_type_extended(type_oid, typemod, FORMAT_TYPE_TYPEMOD_GIVEN);
}
