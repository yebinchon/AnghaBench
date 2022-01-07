
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tag; int * parent; } ;
typedef TYPE_1__ JsonNode ;


 scalar_t__ JSON_OBJECT ;
 int append_member (TYPE_1__*,int ,TYPE_1__*) ;
 int assert (int) ;
 int strdup (char const*) ;

void json_append_member(JsonNode *object, const char *key, JsonNode *value)
{
 assert(object->tag == JSON_OBJECT);
 assert(value->parent == ((void*)0));

 append_member(object, strdup(key), value);
}
