
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prorettype; scalar_t__ pronargs; } ;
typedef TYPE_1__* Form_pg_proc ;


 scalar_t__ OPAQUEOID ;
 scalar_t__ TRIGGEROID ;

__attribute__((used)) static bool
PLy_procedure_is_trigger(Form_pg_proc procStruct)
{
 return (procStruct->prorettype == TRIGGEROID ||
   (procStruct->prorettype == OPAQUEOID &&
    procStruct->pronargs == 0));
}
