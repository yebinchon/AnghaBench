
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int zend_off_t ;
struct TYPE_14__ {TYPE_2__* innerstream; } ;
typedef TYPE_1__ php_stream_temp_data ;
struct TYPE_15__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 int E_WARNING ;
 int FAILURE ;
 int PHP_STREAM_AS_STDIO ;
 int PHP_STREAM_FREE_CLOSE ;
 int PHP_STREAM_IS_STDIO ;
 int SEEK_SET ;
 int SUCCESS ;
 int assert (int ) ;
 int php_error_docref (int *,int ,char*) ;
 int php_stream_cast (TYPE_2__*,int,void**,int) ;
 int php_stream_encloses (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* php_stream_fopen_tmpfile () ;
 int php_stream_free_enclosed (TYPE_2__*,int ) ;
 scalar_t__ php_stream_is (TYPE_2__*,int ) ;
 char* php_stream_memory_get_buffer (TYPE_2__*,size_t*) ;
 int php_stream_seek (TYPE_2__*,int ,int ) ;
 int php_stream_tell (TYPE_2__*) ;
 int php_stream_write (TYPE_2__*,char*,size_t) ;

__attribute__((used)) static int php_stream_temp_cast(php_stream *stream, int castas, void **ret)
{
 php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
 php_stream *file;
 size_t memsize;
 char *membuf;
 zend_off_t pos;

 assert(ts != ((void*)0));

 if (!ts->innerstream) {
  return FAILURE;
 }
 if (php_stream_is(ts->innerstream, PHP_STREAM_IS_STDIO)) {
  return php_stream_cast(ts->innerstream, castas, ret, 0);
 }






 if (ret == ((void*)0) && castas == PHP_STREAM_AS_STDIO) {
  return SUCCESS;
 }


 if (ret == ((void*)0)) {
  return FAILURE;
 }

 file = php_stream_fopen_tmpfile();
 if (file == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "Unable to create temporary file.");
  return FAILURE;
 }


 membuf = php_stream_memory_get_buffer(ts->innerstream, &memsize);
 php_stream_write(file, membuf, memsize);
 pos = php_stream_tell(ts->innerstream);

 php_stream_free_enclosed(ts->innerstream, PHP_STREAM_FREE_CLOSE);
 ts->innerstream = file;
 php_stream_encloses(stream, ts->innerstream);
 php_stream_seek(ts->innerstream, pos, SEEK_SET);

 return php_stream_cast(ts->innerstream, castas, ret, 1);
}
