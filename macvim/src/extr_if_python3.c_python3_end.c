
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PyGILState_Ensure () ;
 int Py_Finalize () ;
 scalar_t__ Py_IsInitialized () ;
 int end_dynamic_python3 () ;
 scalar_t__ hinstPy3 ;

void
python3_end()
{
    static int recurse = 0;


    if (recurse != 0)
 return;

    ++recurse;




    if (Py_IsInitialized())
    {

 PyGILState_Ensure();

 Py_Finalize();
    }





    --recurse;
}
