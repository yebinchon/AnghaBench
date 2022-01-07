
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ead_packet {int dummy; } ;
struct ead_msg_salt {int ext_salt; int salt; int len; scalar_t__ prime; } ;
struct ead_msg {int len; } ;
struct TYPE_8__ {struct ead_msg msg; } ;
struct TYPE_7__ {scalar_t__ index; } ;
struct TYPE_5__ {int len; int data; } ;
struct TYPE_6__ {TYPE_1__ s; } ;


 struct ead_msg_salt* EAD_DATA (struct ead_msg*,int ) ;
 int EAD_TYPE_SEND_A ;
 int MAXSALTLEN ;
 int htonl (int) ;
 int memcpy (int ,int ,int ) ;
 TYPE_4__* pktbuf ;
 int pw_saltbuf ;
 struct ead_msg_salt* salt ;
 TYPE_3__* tce ;
 TYPE_2__* ts ;

__attribute__((used)) static bool
handle_get_prime(struct ead_packet *pkt, int len, int *nstate)
{
 struct ead_msg *msg = &pktbuf->msg;
 struct ead_msg_salt *salt = EAD_DATA(msg, salt);

 msg->len = htonl(sizeof(struct ead_msg_salt));
 salt->prime = tce->index - 1;
 salt->len = ts->s.len;
 memcpy(salt->salt, ts->s.data, ts->s.len);
 memcpy(salt->ext_salt, pw_saltbuf, MAXSALTLEN);

 *nstate = EAD_TYPE_SEND_A;
 return 1;
}
