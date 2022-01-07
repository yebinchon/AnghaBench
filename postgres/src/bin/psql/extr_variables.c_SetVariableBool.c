
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VariableSpace ;


 int SetVariable (int ,char const*,char*) ;

bool
SetVariableBool(VariableSpace space, const char *name)
{
 return SetVariable(space, name, "on");
}
