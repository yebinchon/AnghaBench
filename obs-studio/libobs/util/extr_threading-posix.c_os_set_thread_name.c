
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfree (char*) ;
 char* bstrdup_n (char const*,int) ;
 int pthread_self () ;
 int pthread_set_name_np (int ,char const*) ;
 int pthread_setname_np (char const*,...) ;
 int strlen (char const*) ;

void os_set_thread_name(const char *name)
{
}
