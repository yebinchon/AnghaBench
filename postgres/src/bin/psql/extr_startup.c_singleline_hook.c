
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int singleline; } ;


 int ParseVariableBool (char const*,char*,int *) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
singleline_hook(const char *newval)
{
 return ParseVariableBool(newval, "SINGLELINE", &pset.singleline);
}
