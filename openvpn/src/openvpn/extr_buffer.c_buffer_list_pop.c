
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_list {int * tail; int size; struct buffer_entry* head; } ;
struct buffer_entry {int buf; struct buffer_entry* next; } ;


 int free (struct buffer_entry*) ;
 int free_buf (int *) ;

void
buffer_list_pop(struct buffer_list *ol)
{
    if (ol && ol->head)
    {
        struct buffer_entry *e = ol->head->next;
        free_buf(&ol->head->buf);
        free(ol->head);
        ol->head = e;
        --ol->size;
        if (!e)
        {
            ol->tail = ((void*)0);
        }
    }
}
