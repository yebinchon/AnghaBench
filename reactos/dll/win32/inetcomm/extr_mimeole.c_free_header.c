
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int params; int value; int entry; } ;
typedef TYPE_1__ header_t ;


 int PropVariantClear (int *) ;
 int empty_param_list (int *) ;
 int heap_free (TYPE_1__*) ;
 int list_remove (int *) ;

__attribute__((used)) static void free_header(header_t *header)
{
    list_remove(&header->entry);
    PropVariantClear(&header->value);
    empty_param_list(&header->params);
    heap_free(header);
}
