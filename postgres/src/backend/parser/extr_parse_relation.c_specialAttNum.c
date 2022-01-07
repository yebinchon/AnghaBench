
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attnum; } ;
typedef TYPE_1__ FormData_pg_attribute ;


 int InvalidAttrNumber ;
 TYPE_1__* SystemAttributeByName (char const*) ;

__attribute__((used)) static int
specialAttNum(const char *attname)
{
 const FormData_pg_attribute *sysatt;

 sysatt = SystemAttributeByName(attname);
 if (sysatt != ((void*)0))
  return sysatt->attnum;
 return InvalidAttrNumber;
}
