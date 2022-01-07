
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reliable_entry {int timeout; int next_try; scalar_t__ active; } ;
struct reliable {int hold; int size; int initial_timeout; struct reliable_entry* array; } ;


 int D_REL_DEBUG ;
 int dmsg (int ,char*) ;
 int now ;

void
reliable_schedule_now(struct reliable *rel)
{
    int i;
    dmsg(D_REL_DEBUG, "ACK reliable_schedule_now");
    rel->hold = 0;
    for (i = 0; i < rel->size; ++i)
    {
        struct reliable_entry *e = &rel->array[i];
        if (e->active)
        {
            e->next_try = now;
            e->timeout = rel->initial_timeout;
        }
    }
}
