
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ta_header {size_t size; } ;


 struct ta_header* get_header (void*) ;

size_t ta_get_size(void *ptr)
{
    struct ta_header *h = get_header(ptr);
    return h ? h->size : 0;
}
