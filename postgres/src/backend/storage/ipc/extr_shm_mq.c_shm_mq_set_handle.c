
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mqh_handle; } ;
typedef TYPE_1__ shm_mq_handle ;
typedef int BackgroundWorkerHandle ;


 int Assert (int ) ;

void
shm_mq_set_handle(shm_mq_handle *mqh, BackgroundWorkerHandle *handle)
{
 Assert(mqh->mqh_handle == ((void*)0));
 mqh->mqh_handle = handle;
}
