
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode; struct TYPE_5__* data; } ;
typedef TYPE_1__ php_stream_memory_data ;
struct TYPE_6__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 scalar_t__ TEMP_STREAM_READONLY ;
 int assert (int ) ;
 int efree (TYPE_1__*) ;

__attribute__((used)) static int php_stream_memory_close(php_stream *stream, int close_handle)
{
 php_stream_memory_data *ms = (php_stream_memory_data*)stream->abstract;
 assert(ms != ((void*)0));

 if (ms->data && close_handle && ms->mode != TEMP_STREAM_READONLY) {
  efree(ms->data);
 }
 efree(ms);
 return 0;
}
