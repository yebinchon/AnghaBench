
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * stream; } ;
struct TYPE_8__ {TYPE_1__ stream; } ;
struct TYPE_9__ {TYPE_2__ source; int peek; int get; } ;
struct TYPE_10__ {TYPE_3__ source; } ;
typedef TYPE_4__ json_stream ;
typedef int FILE ;


 int init (TYPE_4__*) ;
 int stream_get ;
 int stream_peek ;

void json_open_stream(json_stream *json, FILE * stream)
{
    init(json);
    json->source.get = stream_get;
    json->source.peek = stream_peek;
    json->source.source.stream.stream = stream;
}
