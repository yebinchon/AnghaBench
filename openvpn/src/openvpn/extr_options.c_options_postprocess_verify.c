
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct options {int ce; TYPE_1__* connection_list; } ;
struct TYPE_2__ {int len; int ** array; } ;


 int options_postprocess_verify_ce (struct options const*,int *) ;

__attribute__((used)) static void
options_postprocess_verify(const struct options *o)
{
    if (o->connection_list)
    {
        int i;
        for (i = 0; i < o->connection_list->len; ++i)
        {
            options_postprocess_verify_ce(o, o->connection_list->array[i]);
        }
    }
    else
    {
        options_postprocess_verify_ce(o, &o->ce);
    }
}
