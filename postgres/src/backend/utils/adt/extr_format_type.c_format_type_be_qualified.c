
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int FORMAT_TYPE_FORCE_QUALIFY ;
 char* format_type_extended (int ,int,int ) ;

char *
format_type_be_qualified(Oid type_oid)
{
 return format_type_extended(type_oid, -1, FORMAT_TYPE_FORCE_QUALIFY);
}
