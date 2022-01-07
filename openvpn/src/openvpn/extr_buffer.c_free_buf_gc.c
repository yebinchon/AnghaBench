
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gc_entry {struct gc_entry* next; } ;
struct gc_arena {struct gc_entry* list; } ;
struct buffer {int * data; } ;


 int CLEAR (struct buffer) ;
 int free (struct gc_entry*) ;

__attribute__((used)) static void
free_buf_gc(struct buffer *buf, struct gc_arena *gc)
{
    if (gc)
    {
        struct gc_entry **e = &gc->list;

        while (*e)
        {

            if ((uint8_t *)(*e + 1) == buf->data)
            {
                struct gc_entry *to_delete = *e;


                *e = (*e)->next;
                free(to_delete);

                break;
            }

            e = &(*e)->next;
        }
    }

    CLEAR(*buf);
}
