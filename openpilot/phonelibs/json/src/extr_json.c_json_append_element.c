
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tag; int * parent; } ;
typedef TYPE_1__ JsonNode ;


 scalar_t__ JSON_ARRAY ;
 int append_node (TYPE_1__*,TYPE_1__*) ;
 int assert (int) ;

void json_append_element(JsonNode *array, JsonNode *element)
{
 assert(array->tag == JSON_ARRAY);
 assert(element->parent == ((void*)0));

 append_node(array, element);
}
