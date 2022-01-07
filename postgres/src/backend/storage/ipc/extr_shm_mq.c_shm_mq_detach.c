
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* mqh_buffer; int mqh_queue; scalar_t__ mqh_segment; } ;
typedef TYPE_1__ shm_mq_handle ;


 int PointerGetDatum (int ) ;
 int cancel_on_dsm_detach (scalar_t__,int ,int ) ;
 int pfree (TYPE_1__*) ;
 int shm_mq_detach_callback ;
 int shm_mq_detach_internal (int ) ;

void
shm_mq_detach(shm_mq_handle *mqh)
{

 shm_mq_detach_internal(mqh->mqh_queue);


 if (mqh->mqh_segment)
  cancel_on_dsm_detach(mqh->mqh_segment,
        shm_mq_detach_callback,
        PointerGetDatum(mqh->mqh_queue));


 if (mqh->mqh_buffer != ((void*)0))
  pfree(mqh->mqh_buffer);
 pfree(mqh);
}
