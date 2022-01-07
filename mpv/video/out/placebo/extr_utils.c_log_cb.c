
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
typedef enum pl_log_level { ____Placeholder_pl_log_level } pl_log_level ;


 int mp_msg (struct mp_log*,int ,char*,char const*) ;
 int * pl_log_to_msg_lev ;

__attribute__((used)) static void log_cb(void *priv, enum pl_log_level level, const char *msg)
{
    struct mp_log *log = priv;
    mp_msg(log, pl_log_to_msg_lev[level], "%s\n", msg);
}
