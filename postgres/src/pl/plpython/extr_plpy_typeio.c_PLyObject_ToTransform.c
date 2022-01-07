
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int typtransform; } ;
struct TYPE_6__ {TYPE_1__ transform; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef int PyObject ;
typedef TYPE_3__ PLyObToDatum ;
typedef int Datum ;


 int FunctionCall1 (int *,int ) ;
 int PointerGetDatum (int *) ;
 int * Py_None ;

__attribute__((used)) static Datum
PLyObject_ToTransform(PLyObToDatum *arg, PyObject *plrv,
       bool *isnull, bool inarray)
{
 if (plrv == Py_None)
 {
  *isnull = 1;
  return (Datum) 0;
 }
 *isnull = 0;
 return FunctionCall1(&arg->u.transform.typtransform, PointerGetDatum(plrv));
}
