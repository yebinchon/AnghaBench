
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct options {int ce; TYPE_1__* connection_list; int log; int daemon; int verbosity; int config; } ;
struct env_set {int dummy; } ;
struct TYPE_2__ {int len; int ** array; } ;


 int platform_getpid () ;
 int setenv_connection_entry (struct env_set*,int *,int) ;
 int setenv_int (struct env_set*,char*,int ) ;
 int setenv_long_long (struct env_set*,char*,int ) ;
 int setenv_str (struct env_set*,char*,int ) ;
 int time (int *) ;

void
setenv_settings(struct env_set *es, const struct options *o)
{
    setenv_str(es, "config", o->config);
    setenv_int(es, "verb", o->verbosity);
    setenv_int(es, "daemon", o->daemon);
    setenv_int(es, "daemon_log_redirect", o->log);
    setenv_long_long(es, "daemon_start_time", time(((void*)0)));
    setenv_int(es, "daemon_pid", platform_getpid());

    if (o->connection_list)
    {
        int i;
        for (i = 0; i < o->connection_list->len; ++i)
        {
            setenv_connection_entry(es, o->connection_list->array[i], i+1);
        }
    }
    else
    {
        setenv_connection_entry(es, &o->ce, 1);
    }
}
