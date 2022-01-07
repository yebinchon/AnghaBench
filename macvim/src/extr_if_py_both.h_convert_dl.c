
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {TYPE_2__* v_list; TYPE_1__* v_dict; } ;
struct TYPE_17__ {int v_type; TYPE_3__ vval; } ;
typedef TYPE_4__ typval_T ;
typedef int (* pytotvfunc ) (int *,TYPE_4__*,int *) ;
struct TYPE_15__ {int lv_refcount; } ;
struct TYPE_14__ {int dv_refcount; } ;
typedef int PyObject ;


 TYPE_4__* PyCObject_AsVoidPtr (int *) ;
 int * PyCObject_FromVoidPtr (TYPE_4__*,int *) ;
 TYPE_4__* PyCapsule_GetPointer (int *,int *) ;
 int * PyCapsule_New (TYPE_4__*,int *,int *) ;
 int * PyDict_GetItemString (int *,char*) ;
 scalar_t__ PyDict_SetItemString (int *,char*,int *) ;
 int Py_DECREF (int *) ;


 void* VAR_UNKNOWN ;
 int copy_tv (TYPE_4__*,TYPE_4__*) ;
 int sprintf (char*,char*,int *) ;

__attribute__((used)) static int
convert_dl(PyObject *obj, typval_T *tv,
        pytotvfunc py_to_tv, PyObject *lookup_dict)
{
    PyObject *capsule;
    char hexBuf[sizeof(void *) * 2 + 3];

    sprintf(hexBuf, "%p", obj);




    capsule = (PyObject *)PyDict_GetItemString(lookup_dict, hexBuf);

    if (capsule == ((void*)0))
    {



 capsule = PyCObject_FromVoidPtr(tv, ((void*)0));

 if (PyDict_SetItemString(lookup_dict, hexBuf, capsule))
 {
     Py_DECREF(capsule);
     tv->v_type = VAR_UNKNOWN;
     return -1;
 }

 Py_DECREF(capsule);

 if (py_to_tv(obj, tv, lookup_dict) == -1)
 {
     tv->v_type = VAR_UNKNOWN;
     return -1;
 }


 switch(tv->v_type)
 {
     case 129: ++tv->vval.v_dict->dv_refcount; break;
     case 128: ++tv->vval.v_list->lv_refcount; break;
 }
    }
    else
    {
 typval_T *v;




 v = PyCObject_AsVoidPtr(capsule);

 copy_tv(v, tv);
    }
    return 0;
}
