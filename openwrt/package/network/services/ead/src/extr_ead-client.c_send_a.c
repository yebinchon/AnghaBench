
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ead_msg_number {int data; } ;
struct TYPE_6__ {void* len; void* type; } ;
struct TYPE_5__ {scalar_t__ len; int data; } ;


 TYPE_1__* A ;
 struct ead_msg_number* EAD_DATA (TYPE_2__*,int ) ;
 scalar_t__ EAD_TYPE_SEND_A ;
 int EAD_TYPE_SEND_B ;
 int handle_b ;
 void* htonl (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 TYPE_2__* msg ;
 int number ;
 int send_packet (int ,int ,int) ;
 TYPE_1__* t_clientgenexp (int ) ;
 int tc ;

__attribute__((used)) static int
send_a(void)
{
 struct ead_msg_number *num = EAD_DATA(msg, number);
 A = t_clientgenexp(tc);
 msg->type = htonl(EAD_TYPE_SEND_A);
 msg->len = htonl(sizeof(struct ead_msg_number) + A->len);
 memcpy(num->data, A->data, A->len);
 return send_packet(EAD_TYPE_SEND_B, handle_b, 1);
}
