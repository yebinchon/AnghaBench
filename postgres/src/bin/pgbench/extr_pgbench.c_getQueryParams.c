
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argc; int * argv; } ;
typedef TYPE_1__ Command ;
typedef int CState ;


 char* getVariable (int *,int ) ;

__attribute__((used)) static void
getQueryParams(CState *st, const Command *command, const char **params)
{
 int i;

 for (i = 0; i < command->argc - 1; i++)
  params[i] = getVariable(st, command->argv[i + 1]);
}
