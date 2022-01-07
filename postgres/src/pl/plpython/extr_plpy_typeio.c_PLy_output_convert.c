
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func ) (TYPE_1__*,int *,int*,int) ;} ;
typedef int PyObject ;
typedef TYPE_1__ PLyObToDatum ;
typedef int Datum ;


 int stub1 (TYPE_1__*,int *,int*,int) ;

Datum
PLy_output_convert(PLyObToDatum *arg, PyObject *val, bool *isnull)
{

 return arg->func(arg, val, isnull, 0);
}
