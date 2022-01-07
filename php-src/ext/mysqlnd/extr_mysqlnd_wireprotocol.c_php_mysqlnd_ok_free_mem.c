
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * message; } ;
typedef TYPE_1__ MYSQLND_PACKET_OK ;


 int mnd_efree (int *) ;

__attribute__((used)) static void
php_mysqlnd_ok_free_mem(void * _packet)
{
 MYSQLND_PACKET_OK *p= (MYSQLND_PACKET_OK *) _packet;
 if (p->message) {
  mnd_efree(p->message);
  p->message = ((void*)0);
 }
}
