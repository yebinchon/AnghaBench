
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* tail; TYPE_2__* head; } ;
struct TYPE_6__ {TYPE_1__ children; struct TYPE_6__* next; struct TYPE_6__* prev; struct TYPE_6__* parent; } ;
typedef TYPE_2__ JsonNode ;



__attribute__((used)) static void append_node(JsonNode *parent, JsonNode *child)
{
 child->parent = parent;
 child->prev = parent->children.tail;
 child->next = ((void*)0);

 if (parent->children.tail != ((void*)0))
  parent->children.tail->next = child;
 else
  parent->children.head = child;
 parent->children.tail = child;
}
