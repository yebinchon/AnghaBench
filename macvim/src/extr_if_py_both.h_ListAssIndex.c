
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int typval_T ;
struct TYPE_13__ {int li_tv; } ;
typedef TYPE_1__ listitem_T ;
struct TYPE_14__ {scalar_t__ lv_lock; } ;
typedef TYPE_2__ list_T ;
struct TYPE_15__ {TYPE_2__* list; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_3__ ListObject ;


 int ConvertFromPyObject (int *,int *) ;
 scalar_t__ FAIL ;
 scalar_t__ ListLength (TYPE_3__*) ;
 int N_ (char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyErr_SET_VIM (int ) ;
 int PyExc_IndexError ;
 int RAISE_LOCKED_LIST ;
 int clear_tv (int *) ;
 int copy_tv (int *,int *) ;
 scalar_t__ list_append_tv (TYPE_2__*,int *) ;
 TYPE_1__* list_find (TYPE_2__*,long) ;
 int vim_free (TYPE_1__*) ;
 int vimlist_remove (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
ListAssIndex(ListObject *self, Py_ssize_t index, PyObject *obj)
{
    typval_T tv;
    list_T *l = self->list;
    listitem_T *li;
    Py_ssize_t length = ListLength(self);

    if (l->lv_lock)
    {
 RAISE_LOCKED_LIST;
 return -1;
    }
    if (index > length || (index == length && obj == ((void*)0)))
    {
 PyErr_SET_STRING(PyExc_IndexError, N_("list index out of range"));
 return -1;
    }

    if (obj == ((void*)0))
    {
 li = list_find(l, (long) index);
 vimlist_remove(l, li, li);
 clear_tv(&li->li_tv);
 vim_free(li);
 return 0;
    }

    if (ConvertFromPyObject(obj, &tv) == -1)
 return -1;

    if (index == length)
    {
 if (list_append_tv(l, &tv) == FAIL)
 {
     clear_tv(&tv);
     PyErr_SET_VIM(N_("failed to add item to list"));
     return -1;
 }
    }
    else
    {
 li = list_find(l, (long) index);
 clear_tv(&li->li_tv);
 copy_tv(&tv, &li->li_tv);
 clear_tv(&tv);
    }
    return 0;
}
