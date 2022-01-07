
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int typioparam; int typfunc; } ;
struct TYPE_6__ {TYPE_1__ scalar; } ;
struct TYPE_7__ {int typmod; TYPE_2__ u; } ;
typedef int PyObject ;
typedef TYPE_3__ PLyObToDatum ;
typedef int Datum ;


 int InputFunctionCall (int *,char*,int ,int ) ;
 char* PLyObject_AsString (int *) ;
 int * Py_None ;

__attribute__((used)) static Datum
PLyObject_ToScalar(PLyObToDatum *arg, PyObject *plrv,
       bool *isnull, bool inarray)
{
 char *str;

 if (plrv == Py_None)
 {
  *isnull = 1;
  return (Datum) 0;
 }
 *isnull = 0;

 str = PLyObject_AsString(plrv);

 return InputFunctionCall(&arg->u.scalar.typfunc,
        str,
        arg->u.scalar.typioparam,
        arg->typmod);
}
