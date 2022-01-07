
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {long v_float; TYPE_1__* v_dict; TYPE_5__* v_list; scalar_t__ v_number; int * v_string; } ;
struct TYPE_15__ {scalar_t__ v_type; TYPE_2__ vval; } ;
typedef TYPE_3__ typval_T ;
typedef scalar_t__ long_u ;
struct TYPE_16__ {TYPE_3__ li_tv; struct TYPE_16__* li_next; } ;
typedef TYPE_4__ listitem_T ;
struct TYPE_17__ {TYPE_4__* lv_first; } ;
typedef TYPE_5__ list_T ;
struct TYPE_18__ {scalar_t__ ht_used; TYPE_7__* ht_array; } ;
typedef TYPE_6__ hashtab_T ;
struct TYPE_19__ {scalar_t__ hi_key; } ;
typedef TYPE_7__ hashitem_T ;
struct TYPE_20__ {TYPE_3__ di_tv; } ;
typedef TYPE_8__ dictitem_T ;
struct TYPE_13__ {TYPE_6__ dv_hashtab; } ;
typedef int PyObject ;


 int HASHITEM_EMPTY (TYPE_7__*) ;
 int NUMBUFLEN ;
 int * PyDict_GetItemString (int *,char*) ;
 int * PyDict_New () ;
 scalar_t__ PyDict_SetItemString (int *,char*,int *) ;
 scalar_t__ PyList_Append (int *,int *) ;
 int * PyList_New (int ) ;
 int * PyString_FromString (char*) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 scalar_t__ VAR_DICT ;
 scalar_t__ VAR_FLOAT ;
 scalar_t__ VAR_LIST ;
 scalar_t__ VAR_NUMBER ;
 scalar_t__ VAR_STRING ;
 TYPE_8__* dict_lookup (TYPE_7__*) ;
 int sprintf (char*,char*,long) ;

__attribute__((used)) static PyObject *
VimToPython(typval_T *our_tv, int depth, PyObject *lookup_dict)
{
    PyObject *ret;
    PyObject *newObj;
    char ptrBuf[sizeof(void *) * 2 + 3];


    if (depth > 100)
    {
 Py_INCREF(Py_None);
 ret = Py_None;
 return ret;
    }



    if ((our_tv->v_type == VAR_LIST && our_tv->vval.v_list != ((void*)0))
     || (our_tv->v_type == VAR_DICT && our_tv->vval.v_dict != ((void*)0)))
    {
 sprintf(ptrBuf, "%p",
  our_tv->v_type == VAR_LIST ? (void *)our_tv->vval.v_list
        : (void *)our_tv->vval.v_dict);

 if ((ret = PyDict_GetItemString(lookup_dict, ptrBuf)))
 {
     Py_INCREF(ret);
     return ret;
 }
    }

    if (our_tv->v_type == VAR_STRING)
 ret = PyString_FromString(our_tv->vval.v_string == ((void*)0)
     ? "" : (char *)our_tv->vval.v_string);
    else if (our_tv->v_type == VAR_NUMBER)
    {
 char buf[NUMBUFLEN];


 sprintf(buf, "%ld", (long)our_tv->vval.v_number);
 ret = PyString_FromString((char *)buf);
    }
    else if (our_tv->v_type == VAR_LIST)
    {
 list_T *list = our_tv->vval.v_list;
 listitem_T *curr;

 if (list == ((void*)0))
     return ((void*)0);

 if (!(ret = PyList_New(0)))
     return ((void*)0);

 if (PyDict_SetItemString(lookup_dict, ptrBuf, ret))
 {
     Py_DECREF(ret);
     return ((void*)0);
 }

 for (curr = list->lv_first; curr != ((void*)0); curr = curr->li_next)
 {
     if (!(newObj = VimToPython(&curr->li_tv, depth + 1, lookup_dict)))
     {
  Py_DECREF(ret);
  return ((void*)0);
     }
     if (PyList_Append(ret, newObj))
     {
  Py_DECREF(newObj);
  Py_DECREF(ret);
  return ((void*)0);
     }
     Py_DECREF(newObj);
 }
    }
    else if (our_tv->v_type == VAR_DICT)
    {

 hashtab_T *ht = &our_tv->vval.v_dict->dv_hashtab;
 long_u todo = ht->ht_used;
 hashitem_T *hi;
 dictitem_T *di;
 if (our_tv->vval.v_dict == ((void*)0))
     return ((void*)0);

 if (!(ret = PyDict_New()))
     return ((void*)0);

 if (PyDict_SetItemString(lookup_dict, ptrBuf, ret))
 {
     Py_DECREF(ret);
     return ((void*)0);
 }

 for (hi = ht->ht_array; todo > 0; ++hi)
 {
     if (!HASHITEM_EMPTY(hi))
     {
  --todo;

  di = dict_lookup(hi);
  if (!(newObj = VimToPython(&di->di_tv, depth + 1, lookup_dict)))
  {
      Py_DECREF(ret);
      return ((void*)0);
  }
  if (PyDict_SetItemString(ret, (char *)hi->hi_key, newObj))
  {
      Py_DECREF(ret);
      Py_DECREF(newObj);
      return ((void*)0);
  }
     }
 }
    }
    else
    {
 Py_INCREF(Py_None);
 ret = Py_None;
    }

    return ret;
}
