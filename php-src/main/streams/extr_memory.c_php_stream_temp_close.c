
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* tmpdir; int meta; scalar_t__ innerstream; } ;
typedef TYPE_1__ php_stream_temp_data ;
struct TYPE_6__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 int PHP_STREAM_FREE_CLOSE ;
 int PHP_STREAM_FREE_PRESERVE_HANDLE ;
 int assert (int ) ;
 int efree (TYPE_1__*) ;
 int php_stream_free_enclosed (scalar_t__,int) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int php_stream_temp_close(php_stream *stream, int close_handle)
{
 php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
 int ret;

 assert(ts != ((void*)0));

 if (ts->innerstream) {
  ret = php_stream_free_enclosed(ts->innerstream, PHP_STREAM_FREE_CLOSE | (close_handle ? 0 : PHP_STREAM_FREE_PRESERVE_HANDLE));
 } else {
  ret = 0;
 }

 zval_ptr_dtor(&ts->meta);

 if (ts->tmpdir) {
  efree(ts->tmpdir);
 }

 efree(ts);

 return ret;
}
