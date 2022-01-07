
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prop; int name; } ;
typedef int IndexAMProperty ;


 int AMPROP_UNKNOWN ;
 TYPE_1__* am_propnames ;
 int lengthof (TYPE_1__*) ;
 scalar_t__ pg_strcasecmp (int ,char const*) ;

__attribute__((used)) static IndexAMProperty
lookup_prop_name(const char *name)
{
 int i;

 for (i = 0; i < lengthof(am_propnames); i++)
 {
  if (pg_strcasecmp(am_propnames[i].name, name) == 0)
   return am_propnames[i].prop;
 }


 return AMPROP_UNKNOWN;
}
