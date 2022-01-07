
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {struct env_item* list; } ;
struct env_item {struct env_item* next; int string; } ;


 scalar_t__ check_debug_level (int) ;
 scalar_t__ env_safe_to_print (int ) ;
 int msg (int,char*,int,int ) ;

void
env_set_print(int msglevel, const struct env_set *es)
{
    if (check_debug_level(msglevel))
    {
        const struct env_item *e;
        int i;

        if (es)
        {
            e = es->list;
            i = 0;

            while (e)
            {
                if (env_safe_to_print(e->string))
                {
                    msg(msglevel, "ENV [%d] '%s'", i, e->string);
                }
                ++i;
                e = e->next;
            }
        }
    }
}
