
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ignoreeof; } ;


 int ParseVariableNum (char const*,char*,int *) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
ignoreeof_hook(const char *newval)
{
 return ParseVariableNum(newval, "IGNOREEOF", &pset.ignoreeof);
}
