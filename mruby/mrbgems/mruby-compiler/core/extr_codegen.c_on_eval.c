
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_bool ;
struct TYPE_5__ {TYPE_1__* parser; } ;
typedef TYPE_2__ codegen_scope ;
struct TYPE_4__ {scalar_t__ on_eval; } ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static
mrb_bool
on_eval(codegen_scope *s)
{
  if (s && s->parser && s->parser->on_eval)
    return TRUE;
  return FALSE;
}
