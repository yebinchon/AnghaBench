
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* buffer; size_t length; } ;
struct TYPE_8__ {TYPE_1__ buffer; } ;
struct TYPE_9__ {TYPE_2__ source; int peek; int get; } ;
struct TYPE_10__ {TYPE_3__ source; } ;
typedef TYPE_4__ json_stream ;


 int buffer_get ;
 int buffer_peek ;
 int init (TYPE_4__*) ;

void json_open_buffer(json_stream *json, const void *buffer, size_t size)
{
    init(json);
    json->source.get = buffer_get;
    json->source.peek = buffer_peek;
    json->source.source.buffer.buffer = (char*) buffer;
    json->source.source.buffer.length = size;
}
