
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;


 int * PyList_GetItem (int *,scalar_t__) ;
 scalar_t__ PyList_Size (int *) ;
 int UNUSED_PARAMETER (int *) ;
 int obs_source_release (int) ;
 int obs_source_t ;
 int parse_args (int *,char*,int **) ;
 scalar_t__ py_to_libobs (int,int *,int*) ;
 int * python_none () ;
 int source ;

__attribute__((used)) static PyObject *source_list_release(PyObject *self, PyObject *args)
{
 PyObject *list;
 if (!parse_args(args, "O", &list))
  return python_none();

 Py_ssize_t count = PyList_Size(list);
 for (Py_ssize_t i = 0; i < count; i++) {
  PyObject *py_source = PyList_GetItem(list, i);
  obs_source_t *source;

  if (py_to_libobs(obs_source_t, py_source, &source)) {
   obs_source_release(source);
  }
 }

 UNUSED_PARAMETER(self);
 return python_none();
}
