
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {char* member_0; int * member_1; } ;
typedef int PyObject ;


 int * PyModule_Create (int *) ;
 int PySys_SetArgv (int,int **) ;
 scalar_t__ init_sys_path () ;
 scalar_t__ init_types () ;
 scalar_t__ populate_module (int *) ;
 int * vim_module ;
 int vimmodule ;

__attribute__((used)) static PyObject *
Py3Init_vim(void)
{

    static wchar_t *(argv[2]) = {L"/must>not&exist/foo", ((void*)0)};

    if (init_types())
 return ((void*)0);


    PySys_SetArgv(1, argv);

    if ((vim_module = PyModule_Create(&vimmodule)) == ((void*)0))
 return ((void*)0);

    if (populate_module(vim_module))
 return ((void*)0);

    if (init_sys_path())
 return ((void*)0);

    return vim_module;
}
