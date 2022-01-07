
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ead_msg_user {int dummy; } ;
struct TYPE_5__ {int username; } ;
struct TYPE_4__ {void* len; void* type; } ;


 TYPE_2__* EAD_DATA (TYPE_1__*,int ) ;
 int EAD_TYPE_ACK_USERNAME ;
 int EAD_TYPE_SET_USERNAME ;
 int handle_none ;
 void* htonl (int) ;
 TYPE_1__* msg ;
 int send_packet (int ,int ,int) ;
 int strcpy (int ,int ) ;
 int user ;
 int username ;

__attribute__((used)) static int
send_username(void)
{
 msg->type = htonl(EAD_TYPE_SET_USERNAME);
 msg->len = htonl(sizeof(struct ead_msg_user));
 strcpy(EAD_DATA(msg, user)->username, username);
 return send_packet(EAD_TYPE_ACK_USERNAME, handle_none, 1);
}
