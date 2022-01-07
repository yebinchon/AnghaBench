
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf_begin; int bytes_in_buffer; size_t bufsize; } ;
typedef TYPE_1__ multipart_buffer ;


 char* memchr (char*,char,int) ;

__attribute__((used)) static char *next_line(multipart_buffer *self)
{

 char* line = self->buf_begin;
 char* ptr = memchr(self->buf_begin, '\n', self->bytes_in_buffer);

 if (ptr) {


  if ((ptr - line) > 0 && *(ptr-1) == '\r') {
   *(ptr-1) = 0;
  } else {
   *ptr = 0;
  }


  self->buf_begin = ptr + 1;
  self->bytes_in_buffer -= (self->buf_begin - line);

 } else {


  if (self->bytes_in_buffer < self->bufsize) {
   return ((void*)0);
  }

  line[self->bufsize] = 0;
  self->buf_begin = ptr;
  self->bytes_in_buffer = 0;
 }

 return line;
}
