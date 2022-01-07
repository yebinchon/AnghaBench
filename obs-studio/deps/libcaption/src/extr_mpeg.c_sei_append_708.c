
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int timestamp; } ;
typedef TYPE_1__ sei_t ;
struct TYPE_10__ {int size; } ;
typedef TYPE_2__ sei_message_t ;
typedef int cea708_t ;


 int CEA608_MAX_SIZE ;
 int cea708_init (int *,int ) ;
 int cea708_render (int *,int ,int ) ;
 int sei_message_append (TYPE_1__*,TYPE_2__*) ;
 int sei_message_data (TYPE_2__*) ;
 TYPE_2__* sei_message_new (int ,int ,int ) ;
 int sei_message_size (TYPE_2__*) ;
 int sei_type_user_data_registered_itu_t_t35 ;

void sei_append_708(sei_t* sei, cea708_t* cea708)
{
    sei_message_t* msg = sei_message_new(sei_type_user_data_registered_itu_t_t35, 0, CEA608_MAX_SIZE);
    msg->size = cea708_render(cea708, sei_message_data(msg), sei_message_size(msg));
    sei_message_append(sei, msg);
    cea708_init(cea708, sei->timestamp);
}
