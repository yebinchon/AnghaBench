
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyUnicode_FromString (char*) ;
 int UNUSED_PARAMETER (int *) ;
 int bfree (char*) ;
 char* obs_frontend_get_current_scene_collection () ;

__attribute__((used)) static PyObject *get_current_scene_collection(PyObject *self, PyObject *args)
{
 char *name = obs_frontend_get_current_scene_collection();
 PyObject *ret = PyUnicode_FromString(name);
 bfree(name);

 UNUSED_PARAMETER(self);
 UNUSED_PARAMETER(args);
 return ret;
}
