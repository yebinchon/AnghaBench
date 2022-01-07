
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__ json_stream ;


 double strtod (char*,int *) ;

double json_get_number(json_stream *json)
{
    char *p = json->data.string;
    return p == ((void*)0) ? 0 : strtod(p, ((void*)0));
}
