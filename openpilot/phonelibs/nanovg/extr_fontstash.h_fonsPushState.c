
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nstates; int * states; int errorUptr; int (* handleError ) (int ,int ,int ) ;} ;
typedef int FONSstate ;
typedef TYPE_1__ FONScontext ;


 size_t FONS_MAX_STATES ;
 int FONS_STATES_OVERFLOW ;
 int memcpy (int *,int *,int) ;
 int stub1 (int ,int ,int ) ;

void fonsPushState(FONScontext* stash)
{
 if (stash->nstates >= FONS_MAX_STATES) {
  if (stash->handleError)
   stash->handleError(stash->errorUptr, FONS_STATES_OVERFLOW, 0);
  return;
 }
 if (stash->nstates > 0)
  memcpy(&stash->states[stash->nstates], &stash->states[stash->nstates-1], sizeof(FONSstate));
 stash->nstates++;
}
