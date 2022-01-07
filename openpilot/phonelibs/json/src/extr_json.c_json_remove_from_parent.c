
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* tail; TYPE_3__* head; } ;
struct TYPE_9__ {int * key; TYPE_3__* next; TYPE_2__* prev; struct TYPE_9__* parent; TYPE_1__ children; } ;
struct TYPE_8__ {TYPE_2__* prev; } ;
struct TYPE_7__ {TYPE_3__* next; } ;
typedef TYPE_4__ JsonNode ;


 int free (int *) ;

void json_remove_from_parent(JsonNode *node)
{
 JsonNode *parent = node->parent;

 if (parent != ((void*)0)) {
  if (node->prev != ((void*)0))
   node->prev->next = node->next;
  else
   parent->children.head = node->next;
  if (node->next != ((void*)0))
   node->next->prev = node->prev;
  else
   parent->children.tail = node->prev;

  free(node->key);

  node->parent = ((void*)0);
  node->prev = node->next = ((void*)0);
  node->key = ((void*)0);
 }
}
