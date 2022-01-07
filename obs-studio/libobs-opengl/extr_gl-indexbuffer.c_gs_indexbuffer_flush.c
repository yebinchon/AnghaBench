
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ gs_indexbuffer_t ;


 int gs_indexbuffer_flush_internal (TYPE_1__*,int ) ;

void gs_indexbuffer_flush(gs_indexbuffer_t *ib)
{
 gs_indexbuffer_flush_internal(ib, ib->data);
}
