
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* HANDLE ;
typedef scalar_t__ DWORD ;


 int FALSE ;
 int INFINITE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForMultipleObjects (int,void**,int ,int ) ;
 void* death ;
 int mpthread_set_name (char*) ;
 int read_input (void*) ;

__attribute__((used)) static void *input_thread_fn(void *ptr)
{
    mpthread_set_name("terminal");
    HANDLE in = ptr;
    HANDLE stuff[2] = {in, death};
    while (1) {
        DWORD r = WaitForMultipleObjects(2, stuff, FALSE, INFINITE);
        if (r != WAIT_OBJECT_0)
            break;
        read_input(in);
    }
    return ((void*)0);
}
