
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hide_tableam; } ;


 int ParseVariableBool (char const*,char*,int *) ;
 TYPE_1__ pset ;

__attribute__((used)) static bool
hide_tableam_hook(const char *newval)
{
 return ParseVariableBool(newval, "HIDE_TABLEAM", &pset.hide_tableam);
}
