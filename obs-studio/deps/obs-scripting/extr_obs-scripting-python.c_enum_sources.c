
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyList_New (int ) ;
 int UNUSED_PARAMETER (int *) ;
 int enum_sources_proc ;
 int obs_enum_sources (int ,int *) ;

__attribute__((used)) static PyObject *enum_sources(PyObject *self, PyObject *args)
{
 UNUSED_PARAMETER(self);
 UNUSED_PARAMETER(args);

 PyObject *list = PyList_New(0);
 obs_enum_sources(enum_sources_proc, list);
 return list;
}
