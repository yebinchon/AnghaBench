
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {int length; int * data; } ;
struct TYPE_9__ {int msg_type; int publish_qos; struct TYPE_9__* next; int msg_id; TYPE_1__ msg; } ;
typedef TYPE_2__ msg_queue_t ;
struct TYPE_10__ {int length; int data; } ;
typedef TYPE_3__ mqtt_message_t ;


 int NODE_DBG (char*) ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_2__*) ;
 int memcpy (int *,int ,int) ;

msg_queue_t *msg_enqueue(msg_queue_t **head, mqtt_message_t *msg, uint16_t msg_id, int msg_type, int publish_qos){
  if(!head){
    return ((void*)0);
  }
  if (!msg || !msg->data || msg->length == 0){
    NODE_DBG("empty message\n");
    return ((void*)0);
  }
  msg_queue_t *node = (msg_queue_t *)calloc(1,sizeof(msg_queue_t));
  if(!node){
    NODE_DBG("not enough memory\n");
    return ((void*)0);
  }

  node->msg.data = (uint8_t *)calloc(1,msg->length);
  if(!node->msg.data){
    NODE_DBG("not enough memory\n");
    free(node);
    return ((void*)0);
  }
  memcpy(node->msg.data, msg->data, msg->length);
  node->msg.length = msg->length;
  node->next = ((void*)0);
  node->msg_id = msg_id;
  node->msg_type = msg_type;
  node->publish_qos = publish_qos;

  msg_queue_t *tail = *head;
  if(tail){
    while(tail->next!=((void*)0)) tail = tail->next;
    tail->next = node;
  } else {
    *head = node;
  }
  return node;
}
