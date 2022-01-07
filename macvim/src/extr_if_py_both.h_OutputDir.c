
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * ObjectDir (int *,int ) ;
 int OutputAttrs ;

__attribute__((used)) static PyObject *
OutputDir(PyObject *self)
{
    return ObjectDir(self, OutputAttrs);
}
