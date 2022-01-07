
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int property_definition_type_t ;
struct TYPE_4__ {int * next; int * value; int * name; int type; } ;
typedef TYPE_1__ property_definition_t ;
typedef int parser_ctx_t ;
typedef int literal_t ;
typedef int expression_t ;


 TYPE_1__* parser_alloc (int *,int) ;

__attribute__((used)) static property_definition_t *new_property_definition(parser_ctx_t *ctx, property_definition_type_t type,
                                                      literal_t *name, expression_t *value)
{
    property_definition_t *ret = parser_alloc(ctx, sizeof(property_definition_t));

    ret->type = type;
    ret->name = name;
    ret->value = value;
    ret->next = ((void*)0);

    return ret;
}
