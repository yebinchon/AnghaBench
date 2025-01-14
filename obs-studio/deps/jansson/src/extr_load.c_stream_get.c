
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; int* buffer; size_t buffer_pos; int (* get ) (int ) ;scalar_t__ column; scalar_t__ last_column; int line; int position; int data; } ;
typedef TYPE_1__ stream_t ;
typedef int json_error_t ;


 int EOF ;
 int STREAM_STATE_EOF ;
 int STREAM_STATE_ERROR ;
 scalar_t__ STREAM_STATE_OK ;
 int assert (int) ;
 int error_set (int *,int ,char*,int) ;
 int stream_to_lex (TYPE_1__*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 size_t utf8_check_first (int) ;
 int utf8_check_full (int*,size_t,int *) ;

__attribute__((used)) static int stream_get(stream_t *stream, json_error_t *error)
{
    int c;

    if(stream->state != STREAM_STATE_OK)
        return stream->state;

    if(!stream->buffer[stream->buffer_pos])
    {
        c = stream->get(stream->data);
        if(c == EOF) {
            stream->state = STREAM_STATE_EOF;
            return STREAM_STATE_EOF;
        }

        stream->buffer[0] = c;
        stream->buffer_pos = 0;

        if(0x80 <= c && c <= 0xFF)
        {

            size_t i, count;

            count = utf8_check_first(c);
            if(!count)
                goto out;

            assert(count >= 2);

            for(i = 1; i < count; i++)
                stream->buffer[i] = stream->get(stream->data);

            if(!utf8_check_full(stream->buffer, count, ((void*)0)))
                goto out;

            stream->buffer[count] = '\0';
        }
        else
            stream->buffer[1] = '\0';
    }

    c = stream->buffer[stream->buffer_pos++];

    stream->position++;
    if(c == '\n') {
        stream->line++;
        stream->last_column = stream->column;
        stream->column = 0;
    }
    else if(utf8_check_first(c)) {


        stream->column++;
    }

    return c;

out:
    stream->state = STREAM_STATE_ERROR;
    error_set(error, stream_to_lex(stream), "unable to decode byte 0x%x", c);
    return STREAM_STATE_ERROR;
}
