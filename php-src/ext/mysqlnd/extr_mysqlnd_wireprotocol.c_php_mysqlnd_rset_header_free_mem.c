
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * s; } ;
struct TYPE_4__ {TYPE_1__ info_or_local_file; } ;
typedef TYPE_2__ MYSQLND_PACKET_RSET_HEADER ;


 int DBG_ENTER (char*) ;
 int DBG_VOID_RETURN ;
 int mnd_efree (int *) ;

__attribute__((used)) static
void php_mysqlnd_rset_header_free_mem(void * _packet)
{
 MYSQLND_PACKET_RSET_HEADER *p= (MYSQLND_PACKET_RSET_HEADER *) _packet;
 DBG_ENTER("php_mysqlnd_rset_header_free_mem");
 if (p->info_or_local_file.s) {
  mnd_efree(p->info_or_local_file.s);
  p->info_or_local_file.s = ((void*)0);
 }
 DBG_VOID_RETURN;
}
