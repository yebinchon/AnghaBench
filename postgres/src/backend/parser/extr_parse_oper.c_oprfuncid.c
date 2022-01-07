
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oprcode; } ;
typedef int Operator ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_operator ;


 int GETSTRUCT (int ) ;

Oid
oprfuncid(Operator op)
{
 Form_pg_operator pgopform = (Form_pg_operator) GETSTRUCT(op);

 return pgopform->oprcode;
}
