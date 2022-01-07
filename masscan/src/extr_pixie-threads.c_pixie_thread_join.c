
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int HANDLE ;


 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;
 int pthread_join (int ,void**) ;

void pixie_thread_join(size_t thread_handle)
{



    void *p;

    pthread_join((pthread_t)thread_handle, &p);

}
