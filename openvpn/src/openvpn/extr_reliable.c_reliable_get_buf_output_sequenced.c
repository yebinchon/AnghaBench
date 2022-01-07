
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reliable_entry {int packet_id; scalar_t__ active; } ;
struct reliable {int size; int packet_id; struct reliable_entry* array; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef int packet_id_type ;


 int D_REL_LOW ;
 int dmsg (int ,char*,int ) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 struct buffer* reliable_get_buf (struct reliable*) ;
 scalar_t__ reliable_pid_in_range1 (int ,int ,int) ;
 scalar_t__ reliable_pid_min (int ,int ) ;
 int reliable_print_ids (struct reliable*,struct gc_arena*) ;

struct buffer *
reliable_get_buf_output_sequenced(struct reliable *rel)
{
    struct gc_arena gc = gc_new();
    int i;
    packet_id_type min_id = 0;
    bool min_id_defined = 0;
    struct buffer *ret = ((void*)0);


    for (i = 0; i < rel->size; ++i)
    {
        const struct reliable_entry *e = &rel->array[i];
        if (e->active)
        {
            if (!min_id_defined || reliable_pid_min(e->packet_id, min_id))
            {
                min_id_defined = 1;
                min_id = e->packet_id;
            }
        }
    }

    if (!min_id_defined || reliable_pid_in_range1(rel->packet_id, min_id, rel->size))
    {
        ret = reliable_get_buf(rel);
    }
    else
    {
        dmsg(D_REL_LOW, "ACK output sequence broken: %s", reliable_print_ids(rel, &gc));
    }
    gc_free(&gc);
    return ret;
}
