
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_arg {int client; int fname; TYPE_1__* backend; } ;
typedef int name ;
struct TYPE_2__ {char* name; scalar_t__ (* load ) (int ,int ) ;} ;


 int MP_ERR (struct thread_arg*,char*,char*,int ) ;
 int mpthread_set_name (char*) ;
 char* mpv_client_name (int ) ;
 int mpv_destroy (int ) ;
 int pthread_detach (int ) ;
 int pthread_self () ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stub1 (int ,int ) ;
 int talloc_free (struct thread_arg*) ;

__attribute__((used)) static void *script_thread(void *p)
{
    pthread_detach(pthread_self());

    struct thread_arg *arg = p;

    char name[90];
    snprintf(name, sizeof(name), "%s (%s)", arg->backend->name,
             mpv_client_name(arg->client));
    mpthread_set_name(name);

    if (arg->backend->load(arg->client, arg->fname) < 0)
        MP_ERR(arg, "Could not load %s %s\n", arg->backend->name, arg->fname);

    mpv_destroy(arg->client);
    talloc_free(arg);
    return ((void*)0);
}
