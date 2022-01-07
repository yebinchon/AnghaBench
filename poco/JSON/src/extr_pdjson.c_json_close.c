
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int string; } ;
struct TYPE_5__ {int (* free ) (int ) ;} ;
struct TYPE_7__ {TYPE_2__ data; TYPE_1__ alloc; int stack; } ;
typedef TYPE_3__ json_stream ;


 int stub1 (int ) ;
 int stub2 (int ) ;

void json_close(json_stream *json)
{
    json->alloc.free(json->stack);
    json->alloc.free(json->data.string);
}
