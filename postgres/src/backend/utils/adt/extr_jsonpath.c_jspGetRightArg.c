
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int right; } ;
struct TYPE_8__ {TYPE_1__ args; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ content; int base; } ;
typedef TYPE_3__ JsonPathItem ;


 int Assert (int) ;
 scalar_t__ jpiAdd ;
 scalar_t__ jpiAnd ;
 scalar_t__ jpiDiv ;
 scalar_t__ jpiEqual ;
 scalar_t__ jpiGreater ;
 scalar_t__ jpiGreaterOrEqual ;
 scalar_t__ jpiLess ;
 scalar_t__ jpiLessOrEqual ;
 scalar_t__ jpiMod ;
 scalar_t__ jpiMul ;
 scalar_t__ jpiNotEqual ;
 scalar_t__ jpiOr ;
 scalar_t__ jpiStartsWith ;
 scalar_t__ jpiSub ;
 int jspInitByBuffer (TYPE_3__*,int ,int ) ;

void
jspGetRightArg(JsonPathItem *v, JsonPathItem *a)
{
 Assert(v->type == jpiAnd ||
     v->type == jpiOr ||
     v->type == jpiEqual ||
     v->type == jpiNotEqual ||
     v->type == jpiLess ||
     v->type == jpiGreater ||
     v->type == jpiLessOrEqual ||
     v->type == jpiGreaterOrEqual ||
     v->type == jpiAdd ||
     v->type == jpiSub ||
     v->type == jpiMul ||
     v->type == jpiDiv ||
     v->type == jpiMod ||
     v->type == jpiStartsWith);

 jspInitByBuffer(a, v->base, v->content.args.right);
}
