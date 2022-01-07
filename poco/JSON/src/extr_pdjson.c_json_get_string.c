
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t string_fill; char const* string; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__ json_stream ;



const char *json_get_string(json_stream *json, size_t *length)
{
    if (length != ((void*)0))
        *length = json->data.string_fill;
    if (json->data.string == ((void*)0))
        return "";
    else
        return json->data.string;
}
