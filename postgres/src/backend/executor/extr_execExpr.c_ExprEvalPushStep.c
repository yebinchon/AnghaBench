
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int steps_alloc; int steps_len; int * steps; } ;
typedef TYPE_1__ ExprState ;
typedef int ExprEvalStep ;


 int memcpy (int *,int const*,int) ;
 int * palloc (int) ;
 int * repalloc (int *,int) ;

void
ExprEvalPushStep(ExprState *es, const ExprEvalStep *s)
{
 if (es->steps_alloc == 0)
 {
  es->steps_alloc = 16;
  es->steps = palloc(sizeof(ExprEvalStep) * es->steps_alloc);
 }
 else if (es->steps_alloc == es->steps_len)
 {
  es->steps_alloc *= 2;
  es->steps = repalloc(es->steps,
        sizeof(ExprEvalStep) * es->steps_alloc);
 }

 memcpy(&es->steps[es->steps_len++], s, sizeof(ExprEvalStep));
}
