
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int UNUSED_PARAMETER (int *) ;
 int obs_frontend_set_current_scene_collection (char const*) ;
 int parse_args (int *,char*,char const**) ;
 int * python_none () ;

__attribute__((used)) static PyObject *set_current_scene_collection(PyObject *self, PyObject *args)
{
 const char *name;
 if (!parse_args(args, "s", &name))
  return python_none();

 UNUSED_PARAMETER(self);

 obs_frontend_set_current_scene_collection(name);
 return python_none();
}
