
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int Operator ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_operator ;


 scalar_t__ GETSTRUCT (int ) ;

Oid
oprid(Operator op)
{
 return ((Form_pg_operator) GETSTRUCT(op))->oid;
}
