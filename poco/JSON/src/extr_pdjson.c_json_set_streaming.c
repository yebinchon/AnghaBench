
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ json_stream ;


 int JSON_FLAG_STREAMING ;

void json_set_streaming(json_stream *json, bool streaming)
{
    if (streaming)
        json->flags |= JSON_FLAG_STREAMING;
    else
        json->flags &= ~JSON_FLAG_STREAMING;
}
