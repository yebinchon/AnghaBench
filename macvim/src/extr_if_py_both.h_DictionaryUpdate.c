
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_16__ {int v_dict; } ;
struct TYPE_17__ {TYPE_1__ vval; } ;
typedef TYPE_2__ typval_T ;
struct TYPE_15__ {int v_type; scalar_t__ v_lock; } ;
struct TYPE_18__ {int di_key; TYPE_13__ di_tv; } ;
typedef TYPE_3__ dictitem_T ;
struct TYPE_19__ {scalar_t__ dv_lock; } ;
typedef TYPE_4__ dict_T ;
typedef int char_u ;
struct TYPE_20__ {TYPE_4__* dict; } ;
typedef int PyObject ;
typedef TYPE_5__ DictionaryObject ;


 int ConvertFromPyMapping (int *,TYPE_2__*) ;
 int ConvertFromPyObject (int *,TYPE_13__*) ;
 scalar_t__ FAIL ;
 int N_ (char*) ;
 int PyArg_ParseTuple (int *,char*,int **) ;
 int PyErr_FORMAT (int ,int ,int) ;
 int PyErr_NoMemory () ;
 scalar_t__ PyErr_Occurred () ;
 int PyExc_ValueError ;
 int * PyIter_Next (int *) ;
 int * PyObject_GetIter (int *) ;
 scalar_t__ PyObject_HasAttrString (int *,char*) ;
 int * PySequence_Fast (int *,char*) ;
 int * PySequence_Fast_GET_ITEM (int *,int) ;
 int PySequence_Fast_GET_SIZE (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int Py_XDECREF (int *) ;
 int RAISE_KEY_ADD_FAIL (int ) ;
 int RAISE_LOCKED_DICTIONARY ;
 int * StringToChars (int *,int **) ;
 int VAR_UNKNOWN ;
 scalar_t__ VimTryEnd () ;
 int VimTryStart () ;
 int clear_tv (TYPE_2__*) ;
 scalar_t__ dict_add (TYPE_4__*,TYPE_3__*) ;
 int dict_extend (TYPE_4__*,int ,int *) ;
 TYPE_3__* dictitem_alloc (int *) ;
 int dictitem_free (TYPE_3__*) ;

__attribute__((used)) static PyObject *
DictionaryUpdate(DictionaryObject *self, PyObject *args, PyObject *kwargs)
{
    dict_T *dict = self->dict;

    if (dict->dv_lock)
    {
 RAISE_LOCKED_DICTIONARY;
 return ((void*)0);
    }

    if (kwargs)
    {
 typval_T tv;

 if (ConvertFromPyMapping(kwargs, &tv) == -1)
     return ((void*)0);

 VimTryStart();
 dict_extend(self->dict, tv.vval.v_dict, (char_u *) "force");
 clear_tv(&tv);
 if (VimTryEnd())
     return ((void*)0);
    }
    else
    {
 PyObject *obj = ((void*)0);

 if (!PyArg_ParseTuple(args, "|O", &obj))
     return ((void*)0);

 if (obj == ((void*)0))
 {
     Py_INCREF(Py_None);
     return Py_None;
 }

 if (PyObject_HasAttrString(obj, "keys"))
     return DictionaryUpdate(self, ((void*)0), obj);
 else
 {
     PyObject *iterator;
     PyObject *item;

     if (!(iterator = PyObject_GetIter(obj)))
  return ((void*)0);

     while ((item = PyIter_Next(iterator)))
     {
  PyObject *fast;
  PyObject *keyObject;
  PyObject *valObject;
  PyObject *todecref;
  char_u *key;
  dictitem_T *di;

  if (!(fast = PySequence_Fast(item, "")))
  {
      Py_DECREF(iterator);
      Py_DECREF(item);
      return ((void*)0);
  }

  Py_DECREF(item);

  if (PySequence_Fast_GET_SIZE(fast) != 2)
  {
      Py_DECREF(iterator);
      Py_DECREF(fast);
      PyErr_FORMAT(PyExc_ValueError,
       N_("expected sequence element of size 2, "
       "but got sequence of size %d"),
       (int) PySequence_Fast_GET_SIZE(fast));
      return ((void*)0);
  }

  keyObject = PySequence_Fast_GET_ITEM(fast, 0);

  if (!(key = StringToChars(keyObject, &todecref)))
  {
      Py_DECREF(iterator);
      Py_DECREF(fast);
      return ((void*)0);
  }

  di = dictitem_alloc(key);

  Py_XDECREF(todecref);

  if (di == ((void*)0))
  {
      Py_DECREF(fast);
      Py_DECREF(iterator);
      PyErr_NoMemory();
      return ((void*)0);
  }
  di->di_tv.v_lock = 0;
  di->di_tv.v_type = VAR_UNKNOWN;

  valObject = PySequence_Fast_GET_ITEM(fast, 1);

  if (ConvertFromPyObject(valObject, &di->di_tv) == -1)
  {
      Py_DECREF(iterator);
      Py_DECREF(fast);
      dictitem_free(di);
      return ((void*)0);
  }

  Py_DECREF(fast);

  if (dict_add(dict, di) == FAIL)
  {
      RAISE_KEY_ADD_FAIL(di->di_key);
      Py_DECREF(iterator);
      dictitem_free(di);
      return ((void*)0);
  }
     }

     Py_DECREF(iterator);


     if (PyErr_Occurred())
  return ((void*)0);
 }
    }
    Py_INCREF(Py_None);
    return Py_None;
}
