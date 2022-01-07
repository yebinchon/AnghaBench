
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next; } ;
typedef TYPE_1__ json_stream ;
typedef enum json_type { ____Placeholder_json_type } json_type ;


 int json_next (TYPE_1__*) ;

enum json_type json_peek(json_stream *json)
{
    enum json_type next = json_next(json);
    json->next = next;
    return next;
}
