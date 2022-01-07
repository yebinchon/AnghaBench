
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ msg_queue_t ;



msg_queue_t * msg_dequeue(msg_queue_t **head){
  if(!head || !*head){
    return ((void*)0);
  }
  msg_queue_t *node = *head;
  *head = node->next;
  node->next = ((void*)0);
  return node;
}
