
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reliable_entry {int buf; } ;
struct reliable {int size; struct reliable_entry* array; } ;


 int free_buf (int *) ;

void
reliable_free(struct reliable *rel)
{
    int i;
    for (i = 0; i < rel->size; ++i)
    {
        struct reliable_entry *e = &rel->array[i];
        free_buf(&e->buf);
    }
}
