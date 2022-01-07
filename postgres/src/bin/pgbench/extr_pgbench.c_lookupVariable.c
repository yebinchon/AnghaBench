
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; } ;
typedef TYPE_1__ Variable ;
struct TYPE_6__ {int vars_sorted; int nvariables; scalar_t__ variables; } ;
typedef TYPE_2__ CState ;


 scalar_t__ bsearch (void*,void*,int ,int,int ) ;
 int compareVariableNames ;
 int qsort (void*,int ,int,int ) ;

__attribute__((used)) static Variable *
lookupVariable(CState *st, char *name)
{
 Variable key;


 if (st->nvariables <= 0)
  return ((void*)0);


 if (!st->vars_sorted)
 {
  qsort((void *) st->variables, st->nvariables, sizeof(Variable),
     compareVariableNames);
  st->vars_sorted = 1;
 }


 key.name = name;
 return (Variable *) bsearch((void *) &key,
        (void *) st->variables,
        st->nvariables,
        sizeof(Variable),
        compareVariableNames);
}
