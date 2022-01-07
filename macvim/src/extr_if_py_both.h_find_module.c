
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int PyObject ;


 int * PyObject_CallFunction (int ,char*,char*,int,...) ;
 int * PyObject_GetAttrString (int *,char*) ;
 int Py_DECREF (int *) ;
 scalar_t__ STRLEN (char*) ;
 int * call_load_module (char*,int,int *) ;
 int py_find_module ;
 scalar_t__ vim_strchr (int *,char) ;

__attribute__((used)) static PyObject *
find_module(char *fullname, char *tail, PyObject *new_path)
{
    PyObject *find_module_result;
    PyObject *module;
    char *dot;

    if ((dot = (char *)vim_strchr((char_u *) tail, '.')))
    {




 PyObject *newest_path;
 int partlen = (int) (dot - 1 - tail);

 if (!(find_module_result = PyObject_CallFunction(py_find_module,
   "s#O", tail, partlen, new_path)))
     return ((void*)0);

 if (!(module = call_load_module(
   fullname,
   ((int) (tail - fullname)) + partlen,
   find_module_result)))
 {
     Py_DECREF(find_module_result);
     return ((void*)0);
 }

 Py_DECREF(find_module_result);

 if (!(newest_path = PyObject_GetAttrString(module, "__path__")))
 {
     Py_DECREF(module);
     return ((void*)0);
 }

 Py_DECREF(module);

 module = find_module(fullname, dot + 1, newest_path);

 Py_DECREF(newest_path);

 return module;
    }
    else
    {
 if (!(find_module_result = PyObject_CallFunction(py_find_module,
   "sO", tail, new_path)))
     return ((void*)0);

 if (!(module = call_load_module(
   fullname,
   (int)STRLEN(fullname),
   find_module_result)))
 {
     Py_DECREF(find_module_result);
     return ((void*)0);
 }

 Py_DECREF(find_module_result);

 return module;
    }
}
