
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_off_t ;
struct php_gz_stream_data_t {int gz_file; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;


 int E_WARNING ;
 int SEEK_END ;
 int assert (int ) ;
 int gzseek (int ,int ,int) ;
 int php_error_docref (int *,int ,char*) ;

__attribute__((used)) static int php_gziop_seek(php_stream *stream, zend_off_t offset, int whence, zend_off_t *newoffs)
{
 struct php_gz_stream_data_t *self = (struct php_gz_stream_data_t *) stream->abstract;

 assert(self != ((void*)0));

 if (whence == SEEK_END) {
  php_error_docref(((void*)0), E_WARNING, "SEEK_END is not supported");
  return -1;
 }
 *newoffs = gzseek(self->gz_file, offset, whence);

 return (*newoffs < 0) ? -1 : 0;
}
