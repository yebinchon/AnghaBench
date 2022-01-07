
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
struct TYPE_6__ {TYPE_1__ msg; } ;
typedef TYPE_2__ msg_queue_t ;


 int free (TYPE_2__*) ;

void msg_destroy(msg_queue_t *node){
  if(!node) return;
  if(node->msg.data){
    free(node->msg.data);
    node->msg.data = ((void*)0);
  }
  free(node);
}
