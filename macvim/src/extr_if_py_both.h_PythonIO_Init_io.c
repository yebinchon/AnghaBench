
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int EMSG (int ) ;
 int Error ;
 int Output ;
 scalar_t__ PyErr_Occurred () ;
 scalar_t__ PySys_SetObject (char*,int *) ;
 int _ (char*) ;

__attribute__((used)) static int
PythonIO_Init_io(void)
{
    if (PySys_SetObject("stdout", (PyObject *)(void *)&Output))
 return -1;
    if (PySys_SetObject("stderr", (PyObject *)(void *)&Error))
 return -1;

    if (PyErr_Occurred())
    {
 EMSG(_("E264: Python: Error initialising I/O objects"));
 return -1;
    }

    return 0;
}
