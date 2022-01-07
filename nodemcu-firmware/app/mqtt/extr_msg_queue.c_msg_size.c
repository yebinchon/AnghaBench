
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ msg_queue_t ;



int msg_size(msg_queue_t **head){
  if(!head || !*head){
    return 0;
  }
  int i = 1;
  msg_queue_t *tail = *head;
  if(tail){
    while(tail->next!=((void*)0)){
      tail = tail->next;
      i++;
    }
  }
  return i;
}
