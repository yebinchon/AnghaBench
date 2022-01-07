
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rows; } ;
typedef int PyObject ;
typedef TYPE_1__ PLyResultObject ;


 int * PyObject_GetItem (int ,int *) ;

__attribute__((used)) static PyObject *
PLy_result_subscript(PyObject *arg, PyObject *item)
{
 PLyResultObject *ob = (PLyResultObject *) arg;

 return PyObject_GetItem(ob->rows, item);
}
