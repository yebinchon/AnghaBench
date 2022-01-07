
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int natts; } ;
struct TYPE_6__ {int attname; } ;
struct TYPE_5__ {TYPE_4__* tupdesc; } ;
typedef int PyObject ;
typedef TYPE_1__ PLyResultObject ;
typedef TYPE_2__* Form_pg_attribute ;


 int NameStr (int ) ;
 int PLy_exc_error ;
 int PLy_exception_set (int ,char*) ;
 int * PyList_New (int) ;
 int PyList_SET_ITEM (int *,int,int ) ;
 int PyString_FromString (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_4__*,int) ;

__attribute__((used)) static PyObject *
PLy_result_colnames(PyObject *self, PyObject *unused)
{
 PLyResultObject *ob = (PLyResultObject *) self;
 PyObject *list;
 int i;

 if (!ob->tupdesc)
 {
  PLy_exception_set(PLy_exc_error, "command did not produce a result set");
  return ((void*)0);
 }

 list = PyList_New(ob->tupdesc->natts);
 if (!list)
  return ((void*)0);
 for (i = 0; i < ob->tupdesc->natts; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(ob->tupdesc, i);

  PyList_SET_ITEM(list, i, PyString_FromString(NameStr(attr->attname)));
 }

 return list;
}
