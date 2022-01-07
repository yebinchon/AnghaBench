
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; } ;
struct TYPE_4__ {TYPE_1__ stream; } ;
struct json_source {TYPE_2__ source; } ;


 int fgetc (int ) ;
 int ungetc (int,int ) ;

__attribute__((used)) static int stream_peek(struct json_source *source)
{
    int c = fgetc(source->source.stream.stream);
    ungetc(c, source->source.stream.stream);
    return c;
}
