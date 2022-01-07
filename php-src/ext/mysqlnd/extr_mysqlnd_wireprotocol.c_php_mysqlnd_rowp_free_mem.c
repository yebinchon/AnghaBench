
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* free_chunk ) (TYPE_3__*,int *) ;} ;
struct TYPE_4__ {int * ptr; } ;
struct TYPE_5__ {TYPE_1__ row_buffer; TYPE_3__* result_set_memory_pool; } ;
typedef TYPE_2__ MYSQLND_PACKET_ROW ;


 int DBG_ENTER (char*) ;
 int DBG_VOID_RETURN ;
 int stub1 (TYPE_3__*,int *) ;

__attribute__((used)) static void
php_mysqlnd_rowp_free_mem(void * _packet)
{
 MYSQLND_PACKET_ROW *p;

 DBG_ENTER("php_mysqlnd_rowp_free_mem");
 p = (MYSQLND_PACKET_ROW *) _packet;
 if (p->row_buffer.ptr) {
  p->result_set_memory_pool->free_chunk(p->result_set_memory_pool, p->row_buffer.ptr);
  p->row_buffer.ptr = ((void*)0);
 }







 DBG_VOID_RETURN;
}
