
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int eof; } ;
typedef TYPE_1__ php_stream ;



__attribute__((used)) static ssize_t php_stream_output_read(php_stream *stream, char *buf, size_t count)
{
 stream->eof = 1;
 return -1;
}
