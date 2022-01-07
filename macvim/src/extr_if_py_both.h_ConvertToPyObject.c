
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * v_string; int v_dict; int v_list; scalar_t__ v_float; scalar_t__ v_number; } ;
struct TYPE_5__ {int v_type; TYPE_1__ vval; } ;
typedef TYPE_2__ typval_T ;
typedef int char_u ;
typedef int PyObject ;


 int * NEW_DICTIONARY (int ) ;
 int * NEW_FUNCTION (int *) ;
 int * NEW_LIST (int ) ;
 int N_ (char*) ;
 int * PyBytes_FromString (char*) ;
 int PyErr_SET_VIM (int ) ;
 int * PyFloat_FromDouble (double) ;
 int * PyLong_FromLong (long) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
__attribute__((used)) static PyObject *
ConvertToPyObject(typval_T *tv)
{
    if (tv == ((void*)0))
    {
 PyErr_SET_VIM(N_("internal error: NULL reference passed"));
 return ((void*)0);
    }
    switch (tv->v_type)
    {
 case 129:
     return PyBytes_FromString(tv->vval.v_string == ((void*)0)
         ? "" : (char *)tv->vval.v_string);
 case 130:
     return PyLong_FromLong((long) tv->vval.v_number);




 case 131:
     return NEW_LIST(tv->vval.v_list);
 case 134:
     return NEW_DICTIONARY(tv->vval.v_dict);
 case 132:
     return NEW_FUNCTION(tv->vval.v_string == ((void*)0)
       ? (char_u *)"" : tv->vval.v_string);
 case 128:
     Py_INCREF(Py_None);
     return Py_None;
 default:
     PyErr_SET_VIM(N_("internal error: invalid value type"));
     return ((void*)0);
    }
}
