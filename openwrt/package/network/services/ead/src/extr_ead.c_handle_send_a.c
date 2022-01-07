
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ead_msg {int len; } ;
struct ead_packet {struct ead_msg msg; } ;
struct ead_msg_number {int data; } ;
struct TYPE_6__ {int len; int data; } ;
struct TYPE_5__ {int len; int data; } ;
struct TYPE_4__ {struct ead_msg msg; } ;


 TYPE_3__ A ;
 TYPE_2__* B ;
 struct ead_msg_number* EAD_DATA (struct ead_msg*,struct ead_msg_number*) ;
 int EAD_TYPE_SEND_AUTH ;
 int MAXPARAMLEN ;
 int abuf ;
 int htonl (int) ;
 int memcpy (int ,int ,int) ;
 int ntohl (int ) ;
 struct ead_msg_number* number ;
 TYPE_1__* pktbuf ;

__attribute__((used)) static bool
handle_send_a(struct ead_packet *pkt, int len, int *nstate)
{
 struct ead_msg *msg = &pkt->msg;
 struct ead_msg_number *number = EAD_DATA(msg, number);
 len = ntohl(msg->len) - sizeof(struct ead_msg_number);

 if (len > MAXPARAMLEN + 1)
  return 0;

 A.len = len;
 A.data = abuf;
 memcpy(A.data, number->data, len);

 msg = &pktbuf->msg;
 number = EAD_DATA(msg, number);
 msg->len = htonl(sizeof(struct ead_msg_number) + B->len);
 memcpy(number->data, B->data, B->len);

 *nstate = EAD_TYPE_SEND_AUTH;
 return 1;
}
