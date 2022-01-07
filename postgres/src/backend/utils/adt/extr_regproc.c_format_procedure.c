
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* format_procedure_internal (int ,int) ;

char *
format_procedure(Oid procedure_oid)
{
 return format_procedure_internal(procedure_oid, 0);
}
