
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Type ;
struct TYPE_2__ {int typname; } ;
typedef TYPE_1__* Form_pg_type ;


 scalar_t__ GETSTRUCT (int ) ;
 int NameStr (int ) ;
 char* pstrdup (int ) ;

char *
typeTypeName(Type t)
{
 Form_pg_type typ;

 typ = (Form_pg_type) GETSTRUCT(t);

 return pstrdup(NameStr(typ->typname));
}
