
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;
struct reliable_entry {scalar_t__ packet_id; struct buffer buf; scalar_t__ active; } ;
struct reliable {int size; scalar_t__ packet_id; struct reliable_entry* array; } ;



struct buffer *
reliable_get_buf_sequenced(struct reliable *rel)
{
    int i;
    for (i = 0; i < rel->size; ++i)
    {
        struct reliable_entry *e = &rel->array[i];
        if (e->active && e->packet_id == rel->packet_id)
        {
            return &e->buf;
        }
    }
    return ((void*)0);
}
