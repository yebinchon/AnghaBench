
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int attname; } ;
typedef TYPE_1__ FormData_pg_attribute ;


 int NameStr (int ) ;
 TYPE_1__** SysAtt ;
 scalar_t__ lengthof (TYPE_1__**) ;
 scalar_t__ strcmp (int ,char const*) ;

const FormData_pg_attribute *
SystemAttributeByName(const char *attname)
{
 int j;

 for (j = 0; j < (int) lengthof(SysAtt); j++)
 {
  const FormData_pg_attribute *att = SysAtt[j];

  if (strcmp(NameStr(att->attname), attname) == 0)
   return att;
 }

 return ((void*)0);
}
