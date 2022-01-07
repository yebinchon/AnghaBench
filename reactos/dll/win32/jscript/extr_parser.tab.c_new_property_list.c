
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tail; int * head; } ;
typedef TYPE_1__ property_list_t ;
typedef int property_definition_t ;
typedef int parser_ctx_t ;


 TYPE_1__* parser_alloc_tmp (int *,int) ;

__attribute__((used)) static property_list_t *new_property_list(parser_ctx_t *ctx, property_definition_t *prop)
{
    property_list_t *ret = parser_alloc_tmp(ctx, sizeof(property_list_t));
    ret->head = ret->tail = prop;
    return ret;
}
