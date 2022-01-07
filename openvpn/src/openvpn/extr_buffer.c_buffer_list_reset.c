
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_list {scalar_t__ size; int * tail; struct buffer_entry* head; } ;
struct buffer_entry {int buf; struct buffer_entry* next; } ;


 int free (struct buffer_entry*) ;
 int free_buf (int *) ;

void
buffer_list_reset(struct buffer_list *ol)
{
    struct buffer_entry *e = ol->head;
    while (e)
    {
        struct buffer_entry *next = e->next;
        free_buf(&e->buf);
        free(e);
        e = next;
    }
    ol->head = ol->tail = ((void*)0);
    ol->size = 0;
}
