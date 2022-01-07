
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; int bufsize; int boundary_next_len; char* buf_begin; int * input_encoding; scalar_t__ detect_order_size; int * detect_order; scalar_t__ bytes_in_buffer; int boundary_next; int boundary; } ;
typedef TYPE_1__ multipart_buffer ;


 int FILLUNIT ;
 scalar_t__ ecalloc (int,int) ;
 scalar_t__ php_rfc1867_encoding_translation () ;
 int php_rfc1867_get_detect_order (int **,scalar_t__*) ;
 scalar_t__ spprintf (int *,int ,char*,char*) ;

__attribute__((used)) static multipart_buffer *multipart_buffer_new(char *boundary, int boundary_len)
{
 multipart_buffer *self = (multipart_buffer *) ecalloc(1, sizeof(multipart_buffer));

 int minsize = boundary_len + 6;
 if (minsize < FILLUNIT) minsize = FILLUNIT;

 self->buffer = (char *) ecalloc(1, minsize + 1);
 self->bufsize = minsize;

 spprintf(&self->boundary, 0, "--%s", boundary);

 self->boundary_next_len = (int)spprintf(&self->boundary_next, 0, "\n--%s", boundary);

 self->buf_begin = self->buffer;
 self->bytes_in_buffer = 0;

 if (php_rfc1867_encoding_translation()) {
  php_rfc1867_get_detect_order(&self->detect_order, &self->detect_order_size);
 } else {
  self->detect_order = ((void*)0);
  self->detect_order_size = 0;
 }

 self->input_encoding = ((void*)0);

 return self;
}
