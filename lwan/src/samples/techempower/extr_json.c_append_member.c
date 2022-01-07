
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* key; } ;
typedef TYPE_1__ JsonNode ;


 int append_node (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void append_member(JsonNode *object, char *key, JsonNode *value)
{
 value->key = key;
 append_node(object, value);
}
