
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos; size_t len; char* data; } ;
typedef TYPE_1__ buffer_data_t ;


 int EOF ;

__attribute__((used)) static int buffer_get(void *data)
{
    char c;
    buffer_data_t *stream = data;
    if(stream->pos >= stream->len)
      return EOF;

    c = stream->data[stream->pos];
    stream->pos++;
    return (unsigned char)c;
}
