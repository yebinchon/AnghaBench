
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int tp_name; } ;
struct TYPE_6__ {int rows; int nrows; int status; TYPE_1__* ob_type; } ;
struct TYPE_5__ {int tp_name; } ;
typedef int PyObject ;
typedef TYPE_2__ PLyResultObject ;


 int PyInt_AsLong (int ) ;
 int PyObject_Str (int ) ;
 int PyString_AsString (int ) ;
 int * PyString_FromFormat (char*,int ,int ,int ,int ) ;
 int * PyUnicode_FromFormat (char*,int ,int ,int ,int ) ;
 TYPE_3__* Py_TYPE (TYPE_2__*) ;

__attribute__((used)) static PyObject *
PLy_result_str(PyObject *arg)
{
 PLyResultObject *ob = (PLyResultObject *) arg;
 return PyString_FromFormat("<%s status=%ld nrows=%ld rows=%s>",
          ob->ob_type->tp_name,
          PyInt_AsLong(ob->status),
          PyInt_AsLong(ob->nrows),
          PyString_AsString(PyObject_Str(ob->rows)));

}
