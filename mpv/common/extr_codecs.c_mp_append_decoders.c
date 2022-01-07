
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder_list {int num_entries; int * entries; } ;


 int add_new (struct mp_decoder_list*,int *,int *) ;

void mp_append_decoders(struct mp_decoder_list *list, struct mp_decoder_list *a)
{
    for (int n = 0; n < a->num_entries; n++)
        add_new(list, &a->entries[n], ((void*)0));
}
