
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; TYPE_2__* tail; } ;
struct TYPE_6__ {TYPE_1__ children; struct TYPE_6__* prev; struct TYPE_6__* next; struct TYPE_6__* parent; } ;
typedef TYPE_2__ JsonNode ;



__attribute__((used)) static void prepend_node(JsonNode *parent, JsonNode *child)
{
 child->parent = parent;
 child->prev = ((void*)0);
 child->next = parent->children.head;

 if (parent->children.head != ((void*)0))
  parent->children.head->prev = child;
 else
  parent->children.tail = child;
 parent->children.head = child;
}
