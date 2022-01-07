
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_bool ;
struct TYPE_4__ {scalar_t__ lastlabel; scalar_t__ pc; scalar_t__ lastpc; } ;
typedef TYPE_1__ codegen_scope ;


 scalar_t__ no_optimize (TYPE_1__*) ;

__attribute__((used)) static mrb_bool
no_peephole(codegen_scope *s)
{
  return no_optimize(s) || s->lastlabel == s->pc || s->pc == 0 || s->pc == s->lastpc;
}
