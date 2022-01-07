
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf_ptr; int* buf_end; int fd; int* buffer; } ;
typedef TYPE_1__ BufferedFile ;


 int CH_EOB ;
 int CH_EOF ;
 int IO_BUF_SIZE ;
 int read (int,int*,int) ;
 int total_bytes ;

__attribute__((used)) static int tcc_peekc_slow(BufferedFile *bf)
{
 int len;

 if (bf->buf_ptr >= bf->buf_end) {
  if (bf->fd != -1) {



   len = IO_BUF_SIZE;

   len = read (bf->fd, bf->buffer, len);
   if (len < 0) {
    len = 0;
   }
  } else {
   len = 0;
  }
  total_bytes += len;
  bf->buf_ptr = bf->buffer;
  bf->buf_end = bf->buffer + len;
  *bf->buf_end = CH_EOB;
 }
 if (bf->buf_ptr < bf->buf_end) {
  return bf->buf_ptr[0];
 } else {
  bf->buf_ptr = bf->buf_end;
  return CH_EOF;
 }
}
