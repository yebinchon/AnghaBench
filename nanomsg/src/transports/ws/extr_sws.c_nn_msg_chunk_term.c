
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_list {int dummy; } ;
struct msg_chunk {int item; int chunk; } ;


 int nn_chunkref_term (int *) ;
 int nn_free (struct msg_chunk*) ;
 int nn_list_erase (struct nn_list*,int *) ;
 int nn_list_item_term (int *) ;

void nn_msg_chunk_term (struct msg_chunk *it, struct nn_list *msg_array)
{
    nn_chunkref_term (&it->chunk);
    nn_list_erase (msg_array, &it->item);
    nn_list_item_term (&it->item);
    nn_free (it);
}
