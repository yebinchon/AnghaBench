
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ col; scalar_t__ lnum; } ;
typedef TYPE_1__ pos_T ;
typedef int checkfun ;
struct TYPE_9__ {scalar_t__ tabObject; TYPE_3__* win; } ;
typedef TYPE_2__ WindowObject ;
struct TYPE_10__ {int w_vars; scalar_t__ w_winrow; scalar_t__ w_height; TYPE_1__ w_cursor; int w_buffer; } ;
typedef int PyObject ;


 scalar_t__ BufferNew (int ) ;
 scalar_t__ CheckTabPage (scalar_t__) ;
 scalar_t__ CheckWindow ;
 int * NEW_DICTIONARY (int ) ;
 int * ObjectDir (int *,int ) ;
 int * OptionsNew (int ,TYPE_3__*,int ,int *) ;
 int * PyLong_FromLong (long) ;
 int * Py_BuildValue (char*,long,long) ;
 int Py_INCREF (scalar_t__) ;
 int SREQ_WIN ;
 scalar_t__ W_WIDTH (TYPE_3__*) ;
 scalar_t__ W_WINCOL (TYPE_3__*) ;
 int WindowAttrs ;
 int get_firstwin (scalar_t__) ;
 scalar_t__ get_win_number (TYPE_3__*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
WindowAttr(WindowObject *self, char *name)
{
    if (strcmp(name, "buffer") == 0)
 return (PyObject *)BufferNew(self->win->w_buffer);
    else if (strcmp(name, "cursor") == 0)
    {
 pos_T *pos = &self->win->w_cursor;

 return Py_BuildValue("(ll)", (long)(pos->lnum), (long)(pos->col));
    }
    else if (strcmp(name, "height") == 0)
 return PyLong_FromLong((long)(self->win->w_height));
    else if (strcmp(name, "vars") == 0)
 return NEW_DICTIONARY(self->win->w_vars);
    else if (strcmp(name, "options") == 0)
 return OptionsNew(SREQ_WIN, self->win, (checkfun) CheckWindow,
   (PyObject *) self);
    else if (strcmp(name, "number") == 0)
    {
 if (CheckTabPage(self->tabObject))
     return ((void*)0);
 return PyLong_FromLong((long)
  get_win_number(self->win, get_firstwin(self->tabObject)));
    }
    else if (strcmp(name, "tabpage") == 0)
    {
 Py_INCREF(self->tabObject);
 return (PyObject *)(self->tabObject);
    }
    else if (strcmp(name, "__members__") == 0)
 return ObjectDir(((void*)0), WindowAttrs);
    else
 return ((void*)0);
}
