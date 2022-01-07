
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int typfunc; } ;
struct TYPE_6__ {TYPE_1__ scalar; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef int PyObject ;
typedef TYPE_3__ PLyDatumToOb ;
typedef int Datum ;


 char* OutputFunctionCall (int *,int ) ;
 int * PyString_FromString (char*) ;
 int pfree (char*) ;

__attribute__((used)) static PyObject *
PLyString_FromScalar(PLyDatumToOb *arg, Datum d)
{
 char *x = OutputFunctionCall(&arg->u.scalar.typfunc, d);
 PyObject *r = PyString_FromString(x);

 pfree(x);
 return r;
}
