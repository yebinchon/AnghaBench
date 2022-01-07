
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ead_msg_cmd_data {int done; int data; } ;


 struct ead_msg_cmd_data* EAD_ENC_DATA (int ,int ) ;
 int cmd_data ;
 int ead_decrypt_message (int ) ;
 int msg ;
 int write (int,int ,int) ;

__attribute__((used)) static bool
handle_cmd_data(void)
{
 struct ead_msg_cmd_data *cmd = EAD_ENC_DATA(msg, cmd_data);
 int datalen = ead_decrypt_message(msg) - sizeof(struct ead_msg_cmd_data);

 if (datalen < 0)
  return 0;

 if (datalen > 0) {
  write(1, cmd->data, datalen);
 }

 return !!cmd->done;
}
