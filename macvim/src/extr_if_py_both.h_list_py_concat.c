
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int v_type; scalar_t__ v_lock; } ;
struct TYPE_6__ {TYPE_5__ li_tv; } ;
typedef TYPE_1__ listitem_T ;
typedef int list_T ;
typedef int PyObject ;


 int PyErr_NoMemory () ;
 scalar_t__ PyErr_Occurred () ;
 int * PyIter_Next (int *) ;
 int * PyObject_GetIter (int *) ;
 int Py_DECREF (int *) ;
 int VAR_UNKNOWN ;
 int _ConvertFromPyObject (int *,TYPE_5__*,int *) ;
 int list_append (int *,TYPE_1__*) ;
 TYPE_1__* listitem_alloc () ;
 int listitem_free (TYPE_1__*) ;

__attribute__((used)) static int
list_py_concat(list_T *l, PyObject *obj, PyObject *lookup_dict)
{
    PyObject *iterator;
    PyObject *item;
    listitem_T *li;

    if (!(iterator = PyObject_GetIter(obj)))
 return -1;

    while ((item = PyIter_Next(iterator)))
    {
 if (!(li = listitem_alloc()))
 {
     PyErr_NoMemory();
     Py_DECREF(item);
     Py_DECREF(iterator);
     return -1;
 }
 li->li_tv.v_lock = 0;
 li->li_tv.v_type = VAR_UNKNOWN;

 if (_ConvertFromPyObject(item, &li->li_tv, lookup_dict) == -1)
 {
     Py_DECREF(item);
     Py_DECREF(iterator);
     listitem_free(li);
     return -1;
 }

 Py_DECREF(item);

 list_append(l, li);
    }

    Py_DECREF(iterator);


    if (PyErr_Occurred())
 return -1;

    return 0;
}
