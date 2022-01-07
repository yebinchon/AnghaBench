
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int ce; struct connection_list* connection_list; } ;
struct connection_list {int len; int ** array; } ;


 int D_SHOW_PARMS ;
 int msg (int ,char*,...) ;
 int show_connection_entry (int *) ;

__attribute__((used)) static void
show_connection_entries(const struct options *o)
{
    if (o->connection_list)
    {
        const struct connection_list *l = o->connection_list;
        int i;
        for (i = 0; i < l->len; ++i)
        {
            msg(D_SHOW_PARMS, "Connection profiles [%d]:", i);
            show_connection_entry(l->array[i]);
        }
    }
    else
    {
        msg(D_SHOW_PARMS, "Connection profiles [default]:");
        show_connection_entry(&o->ce);
    }
    msg(D_SHOW_PARMS, "Connection profiles END");
}
