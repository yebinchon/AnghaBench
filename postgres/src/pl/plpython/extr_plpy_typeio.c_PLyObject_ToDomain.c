
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int domain_info; TYPE_3__* base; } ;
struct TYPE_7__ {TYPE_1__ domain; } ;
struct TYPE_8__ {int mcxt; TYPE_2__ u; int typoid; int (* func ) (TYPE_3__*,int *,int*,int) ;} ;
typedef int PyObject ;
typedef TYPE_3__ PLyObToDatum ;
typedef int Datum ;


 int domain_check (int ,int,int ,int *,int ) ;
 int stub1 (TYPE_3__*,int *,int*,int) ;

__attribute__((used)) static Datum
PLyObject_ToDomain(PLyObToDatum *arg, PyObject *plrv,
       bool *isnull, bool inarray)
{
 Datum result;
 PLyObToDatum *base = arg->u.domain.base;

 result = base->func(base, plrv, isnull, inarray);
 domain_check(result, *isnull, arg->typoid,
     &arg->u.domain.domain_info, arg->mcxt);
 return result;
}
