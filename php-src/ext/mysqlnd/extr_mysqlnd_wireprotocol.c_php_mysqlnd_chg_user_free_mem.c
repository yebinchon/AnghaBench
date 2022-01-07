
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ new_auth_protocol_data_len; int * new_auth_protocol_data; scalar_t__ new_auth_protocol_len; int * new_auth_protocol; } ;
typedef TYPE_1__ MYSQLND_PACKET_CHG_USER_RESPONSE ;


 int mnd_efree (int *) ;

__attribute__((used)) static void
php_mysqlnd_chg_user_free_mem(void * _packet)
{
 MYSQLND_PACKET_CHG_USER_RESPONSE * p = (MYSQLND_PACKET_CHG_USER_RESPONSE *) _packet;

 if (p->new_auth_protocol) {
  mnd_efree(p->new_auth_protocol);
  p->new_auth_protocol = ((void*)0);
 }
 p->new_auth_protocol_len = 0;

 if (p->new_auth_protocol_data) {
  mnd_efree(p->new_auth_protocol_data);
  p->new_auth_protocol_data = ((void*)0);
 }
 p->new_auth_protocol_data_len = 0;
}
