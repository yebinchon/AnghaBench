
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tabObject; } ;
typedef TYPE_1__ WinListObject ;
typedef int TabPageObject ;
typedef int PyObject ;


 int DESTRUCTOR_FINISH (TYPE_1__*) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static void
WinListDestructor(WinListObject *self)
{
    TabPageObject *tabObject = self->tabObject;

    if (tabObject)
    {
 Py_DECREF((PyObject *)(tabObject));
    }

    DESTRUCTOR_FINISH(self);
}
