
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t stack_top; } ;
typedef TYPE_1__ json_stream ;



size_t json_get_depth(json_stream *json)
{
    return json->stack_top + 1;
}
