
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; } ;
typedef TYPE_1__ json_stream ;
typedef int json_allocator ;



void json_set_allocator(json_stream *json, json_allocator *a)
{
    json->alloc = *a;
}
