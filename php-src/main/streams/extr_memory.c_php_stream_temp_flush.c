
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ innerstream; } ;
typedef TYPE_1__ php_stream_temp_data ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 int assert (int ) ;
 int php_stream_flush (scalar_t__) ;

__attribute__((used)) static int php_stream_temp_flush(php_stream *stream)
{
 php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
 assert(ts != ((void*)0));

 return ts->innerstream ? php_stream_flush(ts->innerstream) : -1;
}
