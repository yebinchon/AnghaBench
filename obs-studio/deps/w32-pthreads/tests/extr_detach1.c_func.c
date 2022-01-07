
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sleep (int) ;
 int exit (int) ;
 int pthread_exit (void*) ;

void *
func(void * arg)
{
    int i = (int)(size_t)arg;

    Sleep(i * 10);

    pthread_exit(arg);


    exit(1);
}
