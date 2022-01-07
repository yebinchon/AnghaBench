
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * s; } ;
struct TYPE_4__ {TYPE_1__ message; } ;
typedef TYPE_2__ MYSQLND_PACKET_STATS ;


 int mnd_efree (int *) ;

__attribute__((used)) static
void php_mysqlnd_stats_free_mem(void * _packet)
{
 MYSQLND_PACKET_STATS *p= (MYSQLND_PACKET_STATS *) _packet;
 if (p->message.s) {
  mnd_efree(p->message.s);
  p->message.s = ((void*)0);
 }
}
