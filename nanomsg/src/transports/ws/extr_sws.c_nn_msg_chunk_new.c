
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list {int dummy; } ;
struct msg_chunk {int chunk; int item; } ;


 int alloc_assert (struct msg_chunk*) ;
 struct msg_chunk* nn_alloc (int,char*) ;
 void* nn_chunkref_data (int *) ;
 int nn_chunkref_init (int *,size_t) ;
 int nn_list_end (struct nn_list*) ;
 int nn_list_insert (struct nn_list*,int *,int ) ;
 int nn_list_item_init (int *) ;

void *nn_msg_chunk_new (size_t size, struct nn_list *msg_array)
{
    struct msg_chunk *self;

    self = nn_alloc (sizeof (struct msg_chunk), "msg_chunk");
    alloc_assert (self);

    nn_chunkref_init (&self->chunk, size);
    nn_list_item_init (&self->item);

    nn_list_insert (msg_array, &self->item, nn_list_end (msg_array));

    return nn_chunkref_data (&self->chunk);
}
