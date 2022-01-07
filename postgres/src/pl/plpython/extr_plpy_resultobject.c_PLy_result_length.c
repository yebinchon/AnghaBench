
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rows; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PLyResultObject ;


 int PyList_Size (int ) ;

__attribute__((used)) static Py_ssize_t
PLy_result_length(PyObject *arg)
{
 PLyResultObject *ob = (PLyResultObject *) arg;

 return PyList_Size(ob->rows);
}
