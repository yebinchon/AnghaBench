
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int arg; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ content; int base; } ;
typedef TYPE_2__ JsonPathItem ;


 int Assert (int) ;
 scalar_t__ jpiDatetime ;
 scalar_t__ jpiExists ;
 scalar_t__ jpiFilter ;
 scalar_t__ jpiIsUnknown ;
 scalar_t__ jpiMinus ;
 scalar_t__ jpiNot ;
 scalar_t__ jpiPlus ;
 int jspInitByBuffer (TYPE_2__*,int ,int ) ;

void
jspGetArg(JsonPathItem *v, JsonPathItem *a)
{
 Assert(v->type == jpiFilter ||
     v->type == jpiNot ||
     v->type == jpiIsUnknown ||
     v->type == jpiExists ||
     v->type == jpiPlus ||
     v->type == jpiMinus ||
     v->type == jpiDatetime);

 jspInitByBuffer(a, v->base, v->content.arg);
}
