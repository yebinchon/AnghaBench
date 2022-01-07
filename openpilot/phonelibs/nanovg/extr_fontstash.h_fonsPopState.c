
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nstates; int errorUptr; int (* handleError ) (int ,int ,int ) ;} ;
typedef TYPE_1__ FONScontext ;


 int FONS_STATES_UNDERFLOW ;
 int stub1 (int ,int ,int ) ;

void fonsPopState(FONScontext* stash)
{
 if (stash->nstates <= 1) {
  if (stash->handleError)
   stash->handleError(stash->errorUptr, FONS_STATES_UNDERFLOW, 0);
  return;
 }
 stash->nstates--;
}
