
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mqh_queue; } ;
typedef TYPE_1__ shm_mq_handle ;
typedef int shm_mq ;



shm_mq *
shm_mq_get_queue(shm_mq_handle *mqh)
{
 return mqh->mqh_queue;
}
