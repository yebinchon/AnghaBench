
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; char const* errmsg; } ;
typedef TYPE_1__ json_stream ;


 int JSON_FLAG_ERROR ;

const char *json_get_error(json_stream *json)
{
    return json->flags & JSON_FLAG_ERROR ? json->errmsg : ((void*)0);
}
