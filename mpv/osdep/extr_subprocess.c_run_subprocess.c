
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_args {int log; int args; } ;


 int mp_err (int ,char*,char*) ;
 int mp_msg_flush_status_line (int ) ;
 scalar_t__ mp_subprocess (int ,int *,int *,int *,int *,char**) ;
 int pthread_detach (int ) ;
 int pthread_self () ;
 int talloc_free (struct subprocess_args*) ;

__attribute__((used)) static void *run_subprocess(void *ptr)
{
    struct subprocess_args *p = ptr;
    pthread_detach(pthread_self());

    mp_msg_flush_status_line(p->log);

    char *err = ((void*)0);
    if (mp_subprocess(p->args, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &err) < 0)
        mp_err(p->log, "Running subprocess failed: %s\n", err);

    talloc_free(p);
    return ((void*)0);
}
