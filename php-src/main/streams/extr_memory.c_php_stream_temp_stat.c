
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int innerstream; } ;
typedef TYPE_1__ php_stream_temp_data ;
typedef int php_stream_statbuf ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 int php_stream_stat (int ,int *) ;

__attribute__((used)) static int php_stream_temp_stat(php_stream *stream, php_stream_statbuf *ssb)
{
 php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;

 if (!ts || !ts->innerstream) {
  return -1;
 }
 return php_stream_stat(ts->innerstream, ssb);
}
