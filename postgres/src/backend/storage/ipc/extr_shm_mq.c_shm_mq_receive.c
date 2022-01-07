
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ shm_mq_result ;
struct TYPE_9__ {int mqh_counterparty_attached; int mqh_consume_pending; int mqh_length_word_complete; int mqh_partial_bytes; int mqh_expected_bytes; int mqh_buflen; int * mqh_buffer; int mqh_context; int mqh_handle; TYPE_2__* mqh_queue; } ;
typedef TYPE_1__ shm_mq_handle ;
struct TYPE_10__ {scalar_t__ mq_receiver; int mq_detached; int mq_ring_size; int mq_sender; } ;
typedef TYPE_2__ shm_mq ;
typedef int Size ;


 int Assert (int) ;
 int MAXALIGN (int) ;
 int MAXIMUM_ALIGNOF ;
 int MQH_INITIAL_BUFSIZE ;
 int Max (int,int) ;
 void* MemoryContextAlloc (int ,int) ;
 scalar_t__ MyProc ;
 scalar_t__ SHM_MQ_DETACHED ;
 scalar_t__ SHM_MQ_SUCCESS ;
 scalar_t__ SHM_MQ_WOULD_BLOCK ;
 int memcpy (int *,void*,int) ;
 int pfree (int *) ;
 int shm_mq_counterparty_gone (TYPE_2__*,int ) ;
 int * shm_mq_get_sender (TYPE_2__*) ;
 int shm_mq_inc_bytes_read (TYPE_2__*,int) ;
 scalar_t__ shm_mq_receive_bytes (TYPE_1__*,int,int,int*,void**) ;
 int shm_mq_wait_internal (TYPE_2__*,int *,int ) ;

shm_mq_result
shm_mq_receive(shm_mq_handle *mqh, Size *nbytesp, void **datap, bool nowait)
{
 shm_mq *mq = mqh->mqh_queue;
 shm_mq_result res;
 Size rb = 0;
 Size nbytes;
 void *rawdata;

 Assert(mq->mq_receiver == MyProc);


 if (!mqh->mqh_counterparty_attached)
 {
  if (nowait)
  {
   int counterparty_gone;
   counterparty_gone = shm_mq_counterparty_gone(mq, mqh->mqh_handle);
   if (shm_mq_get_sender(mq) == ((void*)0))
   {
    if (counterparty_gone)
     return SHM_MQ_DETACHED;
    else
     return SHM_MQ_WOULD_BLOCK;
   }
  }
  else if (!shm_mq_wait_internal(mq, &mq->mq_sender, mqh->mqh_handle)
     && shm_mq_get_sender(mq) == ((void*)0))
  {
   mq->mq_detached = 1;
   return SHM_MQ_DETACHED;
  }
  mqh->mqh_counterparty_attached = 1;
 }
 if (mqh->mqh_consume_pending > mq->mq_ring_size / 4)
 {
  shm_mq_inc_bytes_read(mq, mqh->mqh_consume_pending);
  mqh->mqh_consume_pending = 0;
 }


 while (!mqh->mqh_length_word_complete)
 {

  Assert(mqh->mqh_partial_bytes < sizeof(Size));
  res = shm_mq_receive_bytes(mqh, sizeof(Size) - mqh->mqh_partial_bytes,
           nowait, &rb, &rawdata);
  if (res != SHM_MQ_SUCCESS)
   return res;






  if (mqh->mqh_partial_bytes == 0 && rb >= sizeof(Size))
  {
   Size needed;

   nbytes = *(Size *) rawdata;


   needed = MAXALIGN(sizeof(Size)) + MAXALIGN(nbytes);
   if (rb >= needed)
   {
    mqh->mqh_consume_pending += needed;
    *nbytesp = nbytes;
    *datap = ((char *) rawdata) + MAXALIGN(sizeof(Size));
    return SHM_MQ_SUCCESS;
   }





   mqh->mqh_expected_bytes = nbytes;
   mqh->mqh_length_word_complete = 1;
   mqh->mqh_consume_pending += MAXALIGN(sizeof(Size));
   rb -= MAXALIGN(sizeof(Size));
  }
  else
  {
   Size lengthbytes;


   Assert(sizeof(Size) > MAXIMUM_ALIGNOF);


   if (mqh->mqh_buffer == ((void*)0))
   {
    mqh->mqh_buffer = MemoryContextAlloc(mqh->mqh_context,
              MQH_INITIAL_BUFSIZE);
    mqh->mqh_buflen = MQH_INITIAL_BUFSIZE;
   }
   Assert(mqh->mqh_buflen >= sizeof(Size));


   if (mqh->mqh_partial_bytes + rb > sizeof(Size))
    lengthbytes = sizeof(Size) - mqh->mqh_partial_bytes;
   else
    lengthbytes = rb;
   memcpy(&mqh->mqh_buffer[mqh->mqh_partial_bytes], rawdata,
       lengthbytes);
   mqh->mqh_partial_bytes += lengthbytes;
   mqh->mqh_consume_pending += MAXALIGN(lengthbytes);
   rb -= lengthbytes;


   if (mqh->mqh_partial_bytes >= sizeof(Size))
   {
    Assert(mqh->mqh_partial_bytes == sizeof(Size));
    mqh->mqh_expected_bytes = *(Size *) mqh->mqh_buffer;
    mqh->mqh_length_word_complete = 1;
    mqh->mqh_partial_bytes = 0;
   }
  }
 }
 nbytes = mqh->mqh_expected_bytes;

 if (mqh->mqh_partial_bytes == 0)
 {





  res = shm_mq_receive_bytes(mqh, nbytes, nowait, &rb, &rawdata);
  if (res != SHM_MQ_SUCCESS)
   return res;
  if (rb >= nbytes)
  {
   mqh->mqh_length_word_complete = 0;
   mqh->mqh_consume_pending += MAXALIGN(nbytes);
   *nbytesp = nbytes;
   *datap = rawdata;
   return SHM_MQ_SUCCESS;
  }






  if (mqh->mqh_buflen < nbytes)
  {
   Size newbuflen = Max(mqh->mqh_buflen, MQH_INITIAL_BUFSIZE);

   while (newbuflen < nbytes)
    newbuflen *= 2;

   if (mqh->mqh_buffer != ((void*)0))
   {
    pfree(mqh->mqh_buffer);
    mqh->mqh_buffer = ((void*)0);
    mqh->mqh_buflen = 0;
   }
   mqh->mqh_buffer = MemoryContextAlloc(mqh->mqh_context, newbuflen);
   mqh->mqh_buflen = newbuflen;
  }
 }


 for (;;)
 {
  Size still_needed;


  Assert(mqh->mqh_partial_bytes + rb <= nbytes);
  memcpy(&mqh->mqh_buffer[mqh->mqh_partial_bytes], rawdata, rb);
  mqh->mqh_partial_bytes += rb;







  Assert(mqh->mqh_partial_bytes == nbytes || rb == MAXALIGN(rb));
  mqh->mqh_consume_pending += MAXALIGN(rb);


  if (mqh->mqh_partial_bytes >= nbytes)
   break;


  still_needed = nbytes - mqh->mqh_partial_bytes;
  res = shm_mq_receive_bytes(mqh, still_needed, nowait, &rb, &rawdata);
  if (res != SHM_MQ_SUCCESS)
   return res;
  if (rb > still_needed)
   rb = still_needed;
 }


 *nbytesp = nbytes;
 *datap = mqh->mqh_buffer;
 mqh->mqh_length_word_complete = 0;
 mqh->mqh_partial_bytes = 0;
 return SHM_MQ_SUCCESS;
}
