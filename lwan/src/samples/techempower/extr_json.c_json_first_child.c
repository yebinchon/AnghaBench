
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; } ;
struct TYPE_6__ {scalar_t__ tag; TYPE_1__ children; } ;
typedef TYPE_2__ JsonNode ;


 scalar_t__ JSON_ARRAY ;
 scalar_t__ JSON_OBJECT ;

JsonNode *json_first_child(const JsonNode *node)
{
 if (node != ((void*)0) && (node->tag == JSON_ARRAY || node->tag == JSON_OBJECT))
  return node->children.head;
 return ((void*)0);
}
