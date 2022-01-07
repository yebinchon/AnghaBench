
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int pthread_setname_np (int ,char const*) ;

int pthread_set_name_np(pthread_t thread, const char *name)
{
    return pthread_setname_np(thread, name);
}
