
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; int line; scalar_t__ position; scalar_t__ column; int state; scalar_t__ buffer_pos; void* data; int get; } ;
typedef TYPE_1__ stream_t ;
typedef int get_func ;


 int STREAM_STATE_OK ;

__attribute__((used)) static void
stream_init(stream_t *stream, get_func get, void *data)
{
    stream->get = get;
    stream->data = data;
    stream->buffer[0] = '\0';
    stream->buffer_pos = 0;

    stream->state = STREAM_STATE_OK;
    stream->line = 1;
    stream->column = 0;
    stream->position = 0;
}
