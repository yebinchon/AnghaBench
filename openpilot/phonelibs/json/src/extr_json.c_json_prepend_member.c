
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tag; int key; int * parent; } ;
typedef TYPE_1__ JsonNode ;


 scalar_t__ JSON_OBJECT ;
 int assert (int) ;
 int json_strdup (char const*) ;
 int prepend_node (TYPE_1__*,TYPE_1__*) ;

void json_prepend_member(JsonNode *object, const char *key, JsonNode *value)
{
 assert(object->tag == JSON_OBJECT);
 assert(value->parent == ((void*)0));

 value->key = json_strdup(key);
 prepend_node(object, value);
}
