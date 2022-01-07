
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Type ;
struct TYPE_2__ {int typrelid; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_type ;


 scalar_t__ GETSTRUCT (int ) ;

Oid
typeTypeRelid(Type typ)
{
 Form_pg_type typtup;

 typtup = (Form_pg_type) GETSTRUCT(typ);
 return typtup->typrelid;
}
