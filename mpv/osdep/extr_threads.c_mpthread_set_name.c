
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tname ;


 scalar_t__ ERANGE ;
 int pthread_self () ;
 int pthread_set_name_np (int ,char*) ;
 scalar_t__ pthread_setname_np (char*,...) ;
 int snprintf (char*,int,char*,char const*) ;

void mpthread_set_name(const char *name)
{
    char tname[80];
    snprintf(tname, sizeof(tname), "mpv/%s", name);
}
