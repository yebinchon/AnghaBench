
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hashitem_T ;
struct TYPE_7__ {int di_tv; } ;
typedef TYPE_1__ dictitem_T ;
struct TYPE_8__ {int dv_hashtab; scalar_t__ dv_lock; } ;
typedef TYPE_2__ dict_T ;
typedef scalar_t__ char_u ;
struct TYPE_9__ {TYPE_2__* dict; } ;
typedef int PyObject ;
typedef TYPE_3__ DictionaryObject ;


 int * ConvertToPyObject (int *) ;
 int DICT_FLAG_HAS_DEFAULT ;
 int DICT_FLAG_NONE_DEFAULT ;
 int DICT_FLAG_POP ;
 int DICT_FLAG_RETURN_BOOL ;
 scalar_t__ HASHITEM_EMPTY (int *) ;
 scalar_t__ NUL ;
 int PyArg_ParseTuple (int *,char*,int **,int **) ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_KeyError ;
 int Py_DECREF (int *) ;
 int * Py_False ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int * Py_True ;
 int Py_XDECREF (int *) ;
 int RAISE_LOCKED_DICTIONARY ;
 int RAISE_NO_EMPTY_KEYS ;
 scalar_t__* StringToChars (int *,int **) ;
 TYPE_1__* dict_lookup (int *) ;
 int dictitem_free (TYPE_1__*) ;
 int * hash_find (int *,scalar_t__*) ;
 int hash_remove (int *,int *) ;

__attribute__((used)) static PyObject *
_DictionaryItem(DictionaryObject *self, PyObject *args, int flags)
{
    PyObject *keyObject;
    PyObject *defObject = ((flags & DICT_FLAG_NONE_DEFAULT)? Py_None : ((void*)0));
    PyObject *ret;
    char_u *key;
    dictitem_T *di;
    dict_T *dict = self->dict;
    hashitem_T *hi;
    PyObject *todecref;

    if (flags & DICT_FLAG_HAS_DEFAULT)
    {
 if (!PyArg_ParseTuple(args, "O|O", &keyObject, &defObject))
     return ((void*)0);
    }
    else
 keyObject = args;

    if (flags & DICT_FLAG_RETURN_BOOL)
 defObject = Py_False;

    if (!(key = StringToChars(keyObject, &todecref)))
 return ((void*)0);

    if (*key == NUL)
    {
 RAISE_NO_EMPTY_KEYS;
 Py_XDECREF(todecref);
 return ((void*)0);
    }

    hi = hash_find(&dict->dv_hashtab, key);

    Py_XDECREF(todecref);

    if (HASHITEM_EMPTY(hi))
    {
 if (defObject)
 {
     Py_INCREF(defObject);
     return defObject;
 }
 else
 {
     PyErr_SetObject(PyExc_KeyError, keyObject);
     return ((void*)0);
 }
    }
    else if (flags & DICT_FLAG_RETURN_BOOL)
    {
 ret = Py_True;
 Py_INCREF(ret);
 return ret;
    }

    di = dict_lookup(hi);

    if (!(ret = ConvertToPyObject(&di->di_tv)))
 return ((void*)0);

    if (flags & DICT_FLAG_POP)
    {
 if (dict->dv_lock)
 {
     RAISE_LOCKED_DICTIONARY;
     Py_DECREF(ret);
     return ((void*)0);
 }

 hash_remove(&dict->dv_hashtab, hi);
 dictitem_free(di);
    }

    return ret;
}
