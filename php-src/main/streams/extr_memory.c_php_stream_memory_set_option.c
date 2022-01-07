
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; size_t fsize; size_t fpos; size_t data; } ;
typedef TYPE_1__ php_stream_memory_data ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 int PHP_STREAM_OPTION_RETURN_ERR ;
 int PHP_STREAM_OPTION_RETURN_NOTIMPL ;
 int PHP_STREAM_OPTION_RETURN_OK ;



 int TEMP_STREAM_READONLY ;
 size_t erealloc (size_t,size_t) ;
 int memset (size_t,int ,int ) ;

__attribute__((used)) static int php_stream_memory_set_option(php_stream *stream, int option, int value, void *ptrparam)
{
 php_stream_memory_data *ms = (php_stream_memory_data*)stream->abstract;
 size_t newsize;

 switch(option) {
  case 130:
   switch (value) {
    case 128:
     return PHP_STREAM_OPTION_RETURN_OK;

    case 129:
     if (ms->mode & TEMP_STREAM_READONLY) {
      return PHP_STREAM_OPTION_RETURN_ERR;
     }
     newsize = *(size_t*)ptrparam;
     if (newsize <= ms->fsize) {
      if (newsize < ms->fpos) {
       ms->fpos = newsize;
      }
     } else {
      ms->data = erealloc(ms->data, newsize);
      memset(ms->data+ms->fsize, 0, newsize - ms->fsize);
      ms->fsize = newsize;
     }
     ms->fsize = newsize;
     return PHP_STREAM_OPTION_RETURN_OK;
   }
  default:
   return PHP_STREAM_OPTION_RETURN_NOTIMPL;
 }
}
