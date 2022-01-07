
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_queue_t ;



msg_queue_t * msg_peek(msg_queue_t **head){
  if(!head || !*head){
    return ((void*)0);
  }
  return *head;
}
