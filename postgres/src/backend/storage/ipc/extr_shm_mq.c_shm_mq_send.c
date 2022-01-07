
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int shm_mq_result ;
struct TYPE_3__ {int len; void const* data; } ;
typedef TYPE_1__ shm_mq_iovec ;
typedef int shm_mq_handle ;
typedef int Size ;


 int shm_mq_sendv (int *,TYPE_1__*,int,int) ;

shm_mq_result
shm_mq_send(shm_mq_handle *mqh, Size nbytes, const void *data, bool nowait)
{
 shm_mq_iovec iov;

 iov.data = data;
 iov.len = nbytes;

 return shm_mq_sendv(mqh, &iov, 1, nowait);
}
