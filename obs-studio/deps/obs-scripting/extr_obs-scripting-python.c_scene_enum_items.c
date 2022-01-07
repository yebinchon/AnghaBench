
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyList_New (int ) ;
 int UNUSED_PARAMETER (int *) ;
 int enum_items_proc ;
 int obs_scene_enum_items (int,int ,int *) ;
 int obs_scene_t ;
 int parse_args (int *,char*,int **) ;
 int py_to_libobs (int,int *,int*) ;
 int * python_none () ;
 int scene ;

__attribute__((used)) static PyObject *scene_enum_items(PyObject *self, PyObject *args)
{
 PyObject *py_scene;
 obs_scene_t *scene;

 UNUSED_PARAMETER(self);

 if (!parse_args(args, "O", &py_scene))
  return python_none();
 if (!py_to_libobs(obs_scene_t, py_scene, &scene))
  return python_none();

 PyObject *list = PyList_New(0);
 obs_scene_enum_items(scene, enum_items_proc, list);
 return list;
}
