
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct php_gz_stream_data_t {int * stream; int * gz_file; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;


 int EOF ;
 int efree (struct php_gz_stream_data_t*) ;
 int gzclose (int *) ;
 int php_stream_close (int *) ;

__attribute__((used)) static int php_gziop_close(php_stream *stream, int close_handle)
{
 struct php_gz_stream_data_t *self = (struct php_gz_stream_data_t *) stream->abstract;
 int ret = EOF;

 if (close_handle) {
  if (self->gz_file) {
   ret = gzclose(self->gz_file);
   self->gz_file = ((void*)0);
  }
  if (self->stream) {
   php_stream_close(self->stream);
   self->stream = ((void*)0);
  }
 }
 efree(self);

 return ret;
}
