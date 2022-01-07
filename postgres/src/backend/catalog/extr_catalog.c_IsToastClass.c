
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relnamespace; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_class ;


 int IsToastNamespace (int ) ;

bool
IsToastClass(Form_pg_class reltuple)
{
 Oid relnamespace = reltuple->relnamespace;

 return IsToastNamespace(relnamespace);
}
