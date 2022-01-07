
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* format_operator_internal (int ,int) ;

char *
format_operator_qualified(Oid operator_oid)
{
 return format_operator_internal(operator_oid, 1);
}
