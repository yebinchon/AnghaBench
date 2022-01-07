
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct _sei_message_t {size_t size; int type; scalar_t__ next; } ;
typedef int sei_msgtype_t ;
typedef int sei_message_t ;


 scalar_t__ malloc (int) ;
 int memcpy (int ,int *,size_t) ;
 int memset (int ,int ,size_t) ;
 int sei_message_data (struct _sei_message_t*) ;

sei_message_t* sei_message_new(sei_msgtype_t type, uint8_t* data, size_t size)
{
    struct _sei_message_t* msg = (struct _sei_message_t*)malloc(sizeof(struct _sei_message_t) + size);
    msg->next = 0;
    msg->type = type;
    msg->size = size;

    if (data) {
        memcpy(sei_message_data(msg), data, size);
    } else {
        memset(sei_message_data(msg), 0, size);
    }

    return (sei_message_t*)msg;
}
