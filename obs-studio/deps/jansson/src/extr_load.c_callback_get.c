
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos; size_t len; size_t (* callback ) (char*,int ,int ) ;char* data; int arg; } ;
typedef TYPE_1__ callback_data_t ;


 int EOF ;
 int MAX_BUF_LEN ;
 size_t stub1 (char*,int ,int ) ;

__attribute__((used)) static int callback_get(void *data)
{
    char c;
    callback_data_t *stream = data;

    if(stream->pos >= stream->len) {
        stream->pos = 0;
        stream->len = stream->callback(stream->data, MAX_BUF_LEN, stream->arg);
        if(stream->len == 0 || stream->len == (size_t)-1)
            return EOF;
    }

    c = stream->data[stream->pos];
    stream->pos++;
    return (unsigned char)c;
}
