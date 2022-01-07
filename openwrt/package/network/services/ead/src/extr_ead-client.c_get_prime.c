
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int type; } ;


 int EAD_TYPE_GET_PRIME ;
 int EAD_TYPE_PRIME ;
 int handle_prime ;
 int htonl (int ) ;
 TYPE_1__* msg ;
 int send_packet (int ,int ,int) ;

__attribute__((used)) static int
get_prime(void)
{
 msg->type = htonl(EAD_TYPE_GET_PRIME);
 msg->len = 0;
 return send_packet(EAD_TYPE_PRIME, handle_prime, 1);
}
