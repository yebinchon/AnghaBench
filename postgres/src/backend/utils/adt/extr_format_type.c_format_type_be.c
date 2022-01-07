
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* format_type_extended (int ,int,int ) ;

char *
format_type_be(Oid type_oid)
{
 return format_type_extended(type_oid, -1, 0);
}
