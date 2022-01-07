
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_11__ {size_t smax; TYPE_2__* innerstream; int tmpdir; } ;
typedef TYPE_1__ php_stream_temp_data ;
struct TYPE_12__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 int E_WARNING ;
 int PHP_STREAM_FREE_CLOSE ;
 int PHP_STREAM_IS_MEMORY ;
 int assert (int ) ;
 int php_error_docref (int *,int ,char*) ;
 int php_stream_encloses (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* php_stream_fopen_temporary_file (int ,char*,int *) ;
 int php_stream_free_enclosed (TYPE_2__*,int ) ;
 scalar_t__ php_stream_is (TYPE_2__*,int ) ;
 char* php_stream_memory_get_buffer (TYPE_2__*,size_t*) ;
 int php_stream_write (TYPE_2__*,char const*,size_t) ;

__attribute__((used)) static ssize_t php_stream_temp_write(php_stream *stream, const char *buf, size_t count)
{
 php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
 assert(ts != ((void*)0));

 if (!ts->innerstream) {
  return -1;
 }
 if (php_stream_is(ts->innerstream, PHP_STREAM_IS_MEMORY)) {
  size_t memsize;
  char *membuf = php_stream_memory_get_buffer(ts->innerstream, &memsize);

  if (memsize + count >= ts->smax) {
   php_stream *file = php_stream_fopen_temporary_file(ts->tmpdir, "php", ((void*)0));
   if (file == ((void*)0)) {
    php_error_docref(((void*)0), E_WARNING, "Unable to create temporary file, Check permissions in temporary files directory.");
    return 0;
   }
   php_stream_write(file, membuf, memsize);
   php_stream_free_enclosed(ts->innerstream, PHP_STREAM_FREE_CLOSE);
   ts->innerstream = file;
   php_stream_encloses(stream, ts->innerstream);
  }
 }
 return php_stream_write(ts->innerstream, buf, count);
}
