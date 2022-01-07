
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int CurrentAttrs ;
 int * ObjectDir (int *,int ) ;

__attribute__((used)) static PyObject *
CurrentDir(PyObject *self)
{
    return ObjectDir(self, CurrentAttrs);
}
