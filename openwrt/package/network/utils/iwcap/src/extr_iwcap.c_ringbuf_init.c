
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ringbuf_entry {int dummy; } ;
struct ringbuf {int len; int slen; scalar_t__ buf; scalar_t__ fill; } ;


 scalar_t__ malloc (int) ;
 int memset (scalar_t__,int ,int) ;

struct ringbuf * ringbuf_init(uint32_t num_item, uint16_t len_item)
{
 static struct ringbuf r;

 if (len_item <= 0)
  return ((void*)0);

 r.buf = malloc(num_item * (len_item + sizeof(struct ringbuf_entry)));

 if (r.buf)
 {
  r.len = num_item;
  r.fill = 0;
  r.slen = (len_item + sizeof(struct ringbuf_entry));

  memset(r.buf, 0, num_item * len_item);

  return &r;
 }

 return ((void*)0);
}
