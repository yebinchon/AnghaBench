
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_9__ {scalar_t__ position; TYPE_4__* body; } ;
typedef TYPE_2__ php_stream_input_t ;
struct TYPE_10__ {int eof; TYPE_2__* abstract; } ;
typedef TYPE_3__ php_stream ;
typedef scalar_t__ int64_t ;
struct TYPE_8__ {int head; } ;
struct TYPE_11__ {TYPE_1__ readfilters; } ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ SG (int ) ;
 size_t php_stream_read (TYPE_4__*,char*,size_t) ;
 int php_stream_seek (TYPE_4__*,scalar_t__,int ) ;
 int php_stream_write (TYPE_4__*,char*,size_t) ;
 int post_read ;
 int read_post_bytes ;
 size_t sapi_read_post_block (char*,size_t) ;

__attribute__((used)) static ssize_t php_stream_input_read(php_stream *stream, char *buf, size_t count)
{
 php_stream_input_t *input = stream->abstract;
 ssize_t read;

 if (!SG(post_read) && SG(read_post_bytes) < (int64_t)(input->position + count)) {

  size_t read_bytes = sapi_read_post_block(buf, count);

  if (read_bytes > 0) {
   php_stream_seek(input->body, 0, SEEK_END);
   php_stream_write(input->body, buf, read_bytes);
  }
 }

 if (!input->body->readfilters.head) {


  php_stream_seek(input->body, input->position, SEEK_SET);
 }
 read = php_stream_read(input->body, buf, count);

 if (!read || read == (size_t) -1) {
  stream->eof = 1;
 } else {
  input->position += read;
 }

 return read;
}
