
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
typedef TYPE_3__ PLyDatumToOb ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int FunctionCall1 (int *,int ) ;

__attribute__((used)) static PyObject *
PLyObject_FromTransform(PLyDatumToOb *arg, Datum d)
{
 Datum t;

 t = FunctionCall1(&arg->u.transform.typtransform, d);
 return (PyObject *) DatumGetPointer(t);
}
