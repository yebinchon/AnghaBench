
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {TYPE_4__* innerstream; } ;
typedef TYPE_1__ php_stream_temp_data ;
struct TYPE_6__ {int eof; scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_7__ {int eof; } ;


 int assert (int ) ;
 size_t php_stream_read (TYPE_4__*,char*,size_t) ;

__attribute__((used)) static ssize_t php_stream_temp_read(php_stream *stream, char *buf, size_t count)
{
 php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;
 size_t got;

 assert(ts != ((void*)0));

 if (!ts->innerstream) {
  return -1;
 }

 got = php_stream_read(ts->innerstream, buf, count);

 stream->eof = ts->innerstream->eof;

 return got;
}
