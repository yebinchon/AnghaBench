
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reliable_entry {int buf; } ;
struct reliable {int hold; int size; int offset; struct reliable_entry* array; } ;


 int ASSERT (int) ;
 int CLEAR (struct reliable) ;
 int RELIABLE_CAPACITY ;
 int alloc_buf (int) ;
 int buf_init (int *,int) ;

void
reliable_init(struct reliable *rel, int buf_size, int offset, int array_size, bool hold)
{
    int i;

    CLEAR(*rel);
    ASSERT(array_size > 0 && array_size <= RELIABLE_CAPACITY);
    rel->hold = hold;
    rel->size = array_size;
    rel->offset = offset;
    for (i = 0; i < rel->size; ++i)
    {
        struct reliable_entry *e = &rel->array[i];
        e->buf = alloc_buf(buf_size);
        ASSERT(buf_init(&e->buf, offset));
    }
}
