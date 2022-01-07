
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t position; } ;
struct TYPE_5__ {TYPE_1__ source; } ;
typedef TYPE_2__ json_stream ;



size_t json_get_position(json_stream *json)
{
    return json->source.position;
}
