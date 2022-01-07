
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int v_type; scalar_t__ v_lock; } ;
typedef TYPE_1__ typval_T ;
typedef int hashitem_T ;
struct TYPE_18__ {TYPE_1__ di_tv; int di_key; } ;
typedef TYPE_2__ dictitem_T ;
struct TYPE_19__ {int dv_hashtab; scalar_t__ dv_lock; } ;
typedef TYPE_3__ dict_T ;
typedef scalar_t__ char_u ;
struct TYPE_20__ {TYPE_3__* dict; } ;
typedef int PyObject ;
typedef int PyInt ;
typedef TYPE_4__ DictionaryObject ;


 int ConvertFromPyObject (int *,TYPE_1__*) ;
 scalar_t__ FAIL ;
 scalar_t__ NUL ;
 int PyErr_NoMemory () ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_KeyError ;
 int Py_XDECREF (int *) ;
 int RAISE_KEY_ADD_FAIL (scalar_t__*) ;
 int RAISE_LOCKED_DICTIONARY ;
 int RAISE_NO_EMPTY_KEYS ;
 scalar_t__* StringToChars (int *,int **) ;
 int VAR_UNKNOWN ;
 int clear_tv (TYPE_1__*) ;
 int copy_tv (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ dict_add (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* dict_find (TYPE_3__*,scalar_t__*,int) ;
 TYPE_2__* dictitem_alloc (scalar_t__*) ;
 int dictitem_free (TYPE_2__*) ;
 int * hash_find (int *,int ) ;
 int hash_remove (int *,int *) ;
 int vim_free (TYPE_2__*) ;

__attribute__((used)) static PyInt
DictionaryAssItem(
 DictionaryObject *self, PyObject *keyObject, PyObject *valObject)
{
    char_u *key;
    typval_T tv;
    dict_T *dict = self->dict;
    dictitem_T *di;
    PyObject *todecref;

    if (dict->dv_lock)
    {
 RAISE_LOCKED_DICTIONARY;
 return -1;
    }

    if (!(key = StringToChars(keyObject, &todecref)))
 return -1;

    if (*key == NUL)
    {
 RAISE_NO_EMPTY_KEYS;
 Py_XDECREF(todecref);
 return -1;
    }

    di = dict_find(dict, key, -1);

    if (valObject == ((void*)0))
    {
 hashitem_T *hi;

 if (di == ((void*)0))
 {
     Py_XDECREF(todecref);
     PyErr_SetObject(PyExc_KeyError, keyObject);
     return -1;
 }
 hi = hash_find(&dict->dv_hashtab, di->di_key);
 hash_remove(&dict->dv_hashtab, hi);
 dictitem_free(di);
 Py_XDECREF(todecref);
 return 0;
    }

    if (ConvertFromPyObject(valObject, &tv) == -1)
    {
 Py_XDECREF(todecref);
 return -1;
    }

    if (di == ((void*)0))
    {
 if (!(di = dictitem_alloc(key)))
 {
     Py_XDECREF(todecref);
     PyErr_NoMemory();
     return -1;
 }
 di->di_tv.v_lock = 0;
 di->di_tv.v_type = VAR_UNKNOWN;

 if (dict_add(dict, di) == FAIL)
 {
     vim_free(di);
     dictitem_free(di);
     RAISE_KEY_ADD_FAIL(key);
     Py_XDECREF(todecref);
     return -1;
 }
    }
    else
 clear_tv(&di->di_tv);

    Py_XDECREF(todecref);

    copy_tv(&tv, &di->di_tv);
    clear_tv(&tv);
    return 0;
}
