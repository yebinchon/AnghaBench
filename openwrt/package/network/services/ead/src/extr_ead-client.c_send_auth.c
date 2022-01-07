
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ead_msg_auth {int data; } ;
struct TYPE_3__ {void* len; void* type; } ;


 int B ;
 struct ead_msg_auth* EAD_DATA (TYPE_1__*,int ) ;
 int EAD_TYPE_DONE_AUTH ;
 int EAD_TYPE_SEND_AUTH ;
 struct ead_msg_auth* auth ;
 int ead_set_key (int ) ;
 int handle_done_auth ;
 void* htonl (int) ;
 int memcpy (int ,int ,int) ;
 TYPE_1__* msg ;
 int password ;
 int prepare_password () ;
 int send_packet (int ,int ,int) ;
 int skey ;
 int t_clientgetkey (int ,int *) ;
 int t_clientpasswd (int ,int ) ;
 int t_clientresponse (int ) ;
 int tc ;

__attribute__((used)) static int
send_auth(void)
{
 struct ead_msg_auth *auth = EAD_DATA(msg, auth);

 prepare_password();
 t_clientpasswd(tc, password);
 skey = t_clientgetkey(tc, &B);
 if (!skey)
  return 0;

 ead_set_key(skey);
 msg->type = htonl(EAD_TYPE_SEND_AUTH);
 msg->len = htonl(sizeof(struct ead_msg_auth));
 memcpy(auth->data, t_clientresponse(tc), sizeof(auth->data));
 return send_packet(EAD_TYPE_DONE_AUTH, handle_done_auth, 1);
}
