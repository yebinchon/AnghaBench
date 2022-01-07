
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyList_Append (int *,int *) ;
 int * PyList_New (int ) ;
 int * PyUnicode_FromString (char*) ;
 int Py_DECREF (int *) ;
 int UNUSED_PARAMETER (int *) ;
 int bfree (char**) ;
 char** obs_frontend_get_scene_names () ;

__attribute__((used)) static PyObject *get_scene_names(PyObject *self, PyObject *args)
{
 char **names = obs_frontend_get_scene_names();
 char **name = names;

 PyObject *list = PyList_New(0);

 while (name && *name) {
  PyObject *py_name = PyUnicode_FromString(*name);
  if (py_name) {
   PyList_Append(list, py_name);
   Py_DECREF(py_name);
  }
  name++;
 }

 UNUSED_PARAMETER(self);
 UNUSED_PARAMETER(args);

 bfree(names);
 return list;
}
