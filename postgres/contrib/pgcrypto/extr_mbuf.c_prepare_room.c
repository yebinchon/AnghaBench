
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int * data; int * read_pos; int * data_end; int * buf_end; } ;
typedef TYPE_1__ MBuf ;


 int STEP ;
 int * px_realloc (int *,unsigned int) ;

__attribute__((used)) static void
prepare_room(MBuf *mbuf, int block_len)
{
 uint8 *newbuf;
 unsigned newlen;

 if (mbuf->data_end + block_len <= mbuf->buf_end)
  return;

 newlen = (mbuf->buf_end - mbuf->data)
  + ((block_len + STEP + STEP - 1) & -STEP);

 newbuf = px_realloc(mbuf->data, newlen);

 mbuf->buf_end = newbuf + newlen;
 mbuf->data_end = newbuf + (mbuf->data_end - mbuf->data);
 mbuf->read_pos = newbuf + (mbuf->read_pos - mbuf->data);
 mbuf->data = newbuf;

 return;
}
