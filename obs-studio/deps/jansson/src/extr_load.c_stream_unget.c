
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t buffer_pos; int* buffer; int column; int last_column; int line; int position; } ;
typedef TYPE_1__ stream_t ;


 int STREAM_STATE_EOF ;
 int STREAM_STATE_ERROR ;
 int assert (int) ;
 scalar_t__ utf8_check_first (int) ;

__attribute__((used)) static void stream_unget(stream_t *stream, int c)
{
    if(c == STREAM_STATE_EOF || c == STREAM_STATE_ERROR)
        return;

    stream->position--;
    if(c == '\n') {
        stream->line--;
        stream->column = stream->last_column;
    }
    else if(utf8_check_first(c))
        stream->column--;

    assert(stream->buffer_pos > 0);
    stream->buffer_pos--;
    assert(stream->buffer[stream->buffer_pos] == c);
}
