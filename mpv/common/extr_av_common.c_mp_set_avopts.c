
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int mp_set_avopts_pos (struct mp_log*,void*,void*,char**) ;

int mp_set_avopts(struct mp_log *log, void *avobj, char **kv)
{
    return mp_set_avopts_pos(log, avobj, avobj, kv);
}
