
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int shm_mq_handle ;
struct TYPE_4__ {int * queue; } ;
typedef TYPE_1__ TupleQueueReader ;


 TYPE_1__* palloc0 (int) ;

TupleQueueReader *
CreateTupleQueueReader(shm_mq_handle *handle)
{
 TupleQueueReader *reader = palloc0(sizeof(TupleQueueReader));

 reader->queue = handle;

 return reader;
}
