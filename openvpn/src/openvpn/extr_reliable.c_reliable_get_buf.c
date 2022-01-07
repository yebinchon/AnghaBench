
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;
struct reliable_entry {struct buffer buf; int active; } ;
struct reliable {int size; int offset; struct reliable_entry* array; } ;


 int ASSERT (int ) ;
 int buf_init (struct buffer*,int ) ;

struct buffer *
reliable_get_buf(struct reliable *rel)
{
    int i;
    for (i = 0; i < rel->size; ++i)
    {
        struct reliable_entry *e = &rel->array[i];
        if (!e->active)
        {
            ASSERT(buf_init(&e->buf, rel->offset));
            return &e->buf;
        }
    }
    return ((void*)0);
}
