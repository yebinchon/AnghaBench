
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* elems; } ;
struct TYPE_10__ {TYPE_1__ array; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ content; int base; } ;
struct TYPE_11__ {int to; int from; } ;
typedef TYPE_4__ JsonPathItem ;


 int Assert (int) ;
 scalar_t__ jpiIndexArray ;
 int jspInitByBuffer (TYPE_4__*,int ,int ) ;

bool
jspGetArraySubscript(JsonPathItem *v, JsonPathItem *from, JsonPathItem *to,
      int i)
{
 Assert(v->type == jpiIndexArray);

 jspInitByBuffer(from, v->base, v->content.array.elems[i].from);

 if (!v->content.array.elems[i].to)
  return 0;

 jspInitByBuffer(to, v->base, v->content.array.elems[i].to);

 return 1;
}
