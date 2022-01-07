
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; int name; int args; } ;
typedef TYPE_1__ VariableSetStmt ;


 char* GetConfigOptionByName (int ,int *,int) ;


 char* flatten_set_variable_args (int ,int ) ;

char *
ExtractSetVariableArgs(VariableSetStmt *stmt)
{
 switch (stmt->kind)
 {
  case 128:
   return flatten_set_variable_args(stmt->name, stmt->args);
  case 129:
   return GetConfigOptionByName(stmt->name, ((void*)0), 0);
  default:
   return ((void*)0);
 }
}
