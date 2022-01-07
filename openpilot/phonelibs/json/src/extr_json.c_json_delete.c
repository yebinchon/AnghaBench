
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* head; } ;
struct TYPE_7__ {int tag; struct TYPE_7__* next; TYPE_1__ children; struct TYPE_7__* string_; } ;
typedef TYPE_2__ JsonNode ;





 int free (TYPE_2__*) ;
 int json_remove_from_parent (TYPE_2__*) ;

void json_delete(JsonNode *node)
{
 if (node != ((void*)0)) {
  json_remove_from_parent(node);

  switch (node->tag) {
   case 128:
    free(node->string_);
    break;
   case 130:
   case 129:
   {
    JsonNode *child, *next;
    for (child = node->children.head; child != ((void*)0); child = next) {
     next = child->next;
     json_delete(child);
    }
    break;
   }
   default:;
  }

  free(node);
 }
}
