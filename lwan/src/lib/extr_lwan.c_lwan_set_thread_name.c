
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_name ;
typedef int process_name ;


 int PATH_MAX ;
 int getpid () ;
 scalar_t__ proc_pidpath (int ,char*,int) ;
 int pthread_self () ;
 int pthread_set_name_np (int ,char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 char* strrchr (char*,char) ;

void lwan_set_thread_name(const char *name)
{
    char thread_name[16];
    char process_name[PATH_MAX];
    char *tmp;
    int ret;

    if (proc_pidpath(getpid(), process_name, sizeof(process_name)) < 0)
        return;

    tmp = strrchr(process_name, '/');
    if (!tmp)
        return;

    ret = snprintf(thread_name, sizeof(thread_name), "%s %s", tmp + 1, name);
    if (ret < 0)
        return;

    pthread_set_name_np(pthread_self(), thread_name);
}
