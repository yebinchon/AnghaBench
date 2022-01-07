
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PyObject_Free (void*) ;
 int _PyObject_DebugFree (void*) ;

__attribute__((used)) static void
call_PyObject_Free(void *p)
{



    PyObject_Free(p);

}
