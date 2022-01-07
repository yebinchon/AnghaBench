
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vars; } ;


 int SetVariable (int ,char*,int *) ;
 TYPE_1__ pset ;

void
UnsyncVariables(void)
{
 SetVariable(pset.vars, "DBNAME", ((void*)0));
 SetVariable(pset.vars, "USER", ((void*)0));
 SetVariable(pset.vars, "HOST", ((void*)0));
 SetVariable(pset.vars, "PORT", ((void*)0));
 SetVariable(pset.vars, "ENCODING", ((void*)0));
 SetVariable(pset.vars, "SERVER_VERSION_NAME", ((void*)0));
 SetVariable(pset.vars, "SERVER_VERSION_NUM", ((void*)0));
}
