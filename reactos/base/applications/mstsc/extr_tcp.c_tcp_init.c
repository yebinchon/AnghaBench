
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_4__ {scalar_t__ size; int * data; int * end; int * p; } ;
typedef TYPE_1__* STREAM ;


 int SCARD_LOCK_TCP ;
 int STREAM_COUNT ;
 TYPE_1__* g_out ;
 int scard_lock (int ) ;
 int scard_unlock (int ) ;
 scalar_t__ xrealloc (int *,scalar_t__) ;

STREAM
tcp_init(uint32 maxlen)
{
 static int cur_stream_id = 0;
 STREAM result = ((void*)0);




 result = &g_out[cur_stream_id];
 cur_stream_id = (cur_stream_id + 1) % STREAM_COUNT;

 if (maxlen > result->size)
 {
  result->data = (uint8 *) xrealloc(result->data, maxlen);
  result->size = maxlen;
 }

 result->p = result->data;
 result->end = result->data + result->size;



 return result;
}
