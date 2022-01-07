
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ead_msg_cmd {scalar_t__ data; void* timeout; void* type; } ;
struct TYPE_4__ {int type; } ;


 int EAD_CMD_NORMAL ;
 struct ead_msg_cmd* EAD_ENC_DATA (TYPE_1__*,int ) ;
 int EAD_TYPE_RESULT_CMD ;
 int EAD_TYPE_SEND_CMD ;
 struct ead_msg_cmd* cmd ;
 int ead_encrypt_message (TYPE_1__*,scalar_t__) ;
 int handle_cmd_data ;
 int htonl (int ) ;
 void* htons (int) ;
 TYPE_1__* msg ;
 int send_packet (int ,int ,int) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
send_command(const char *command)
{
 struct ead_msg_cmd *cmd = EAD_ENC_DATA(msg, cmd);

 msg->type = htonl(EAD_TYPE_SEND_CMD);
 cmd->type = htons(EAD_CMD_NORMAL);
 cmd->timeout = htons(10);
 strncpy((char *)cmd->data, command, 1024);
 ead_encrypt_message(msg, sizeof(struct ead_msg_cmd) + strlen(command) + 1);
 return send_packet(EAD_TYPE_RESULT_CMD, handle_cmd_data, 1);
}
