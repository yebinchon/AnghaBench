
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* ringbuf_t ;
struct TYPE_8__ {int const* head; int tail; int const* buf; } ;


 size_t LWIP_MIN (int,size_t) ;
 int lwIP_ASSERT (int) ;
 int os_memset (int const*,int,size_t) ;
 size_t ringbuf_buffer_size (TYPE_1__*) ;
 size_t ringbuf_bytes_free (TYPE_1__*) ;
 int * ringbuf_end (TYPE_1__*) ;
 int ringbuf_is_full (TYPE_1__*) ;
 int ringbuf_nextp (TYPE_1__*,int const*) ;

size_t ringbuf_memset(ringbuf_t dst, int c, size_t len)
{
 const uint8_t *bufend = ringbuf_end(dst);
 size_t nwritten = 0;
 size_t count = LWIP_MIN(len, ringbuf_buffer_size(dst));
 int overflow = count > ringbuf_bytes_free(dst);

 while (nwritten != count){

  lwIP_ASSERT(bufend > dst->head);
  size_t n = LWIP_MIN(bufend - dst->head, count - nwritten);
  os_memset(dst->head, c, n);
  dst->head += n;
  nwritten += n;

  if (dst->head == bufend)
   dst->head = dst->buf;
 }

 if (overflow){
  dst->tail = ringbuf_nextp(dst, dst->head);
  lwIP_ASSERT(ringbuf_is_full(dst));
 }

 return nwritten;
}
