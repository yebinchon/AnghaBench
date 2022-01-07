
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* rfft_plan ;
struct TYPE_5__ {void* packplan; scalar_t__ blueplan; } ;


 int DEALLOC (TYPE_1__*) ;
 TYPE_1__* RALLOC (int ,int) ;
 int cost_guess (size_t) ;
 size_t good_size (int) ;
 scalar_t__ largest_prime_factor (size_t) ;
 scalar_t__ make_fftblue_plan (size_t) ;
 void* make_rfftp_plan (size_t) ;
 int rfft_plan_i ;
 scalar_t__ sqrt (size_t) ;

__attribute__((used)) static rfft_plan make_rfft_plan (size_t length)
  {
  if (length==0) return ((void*)0);
  rfft_plan plan = RALLOC(rfft_plan_i,1);
  if (!plan) return ((void*)0);
  plan->blueplan=0;
  plan->packplan=0;
  if ((length<50) || (largest_prime_factor(length)<=sqrt(length)))
    {
    plan->packplan=make_rfftp_plan(length);
    if (!plan->packplan) { DEALLOC(plan); return ((void*)0); }
    return plan;
    }
  double comp1 = 0.5*cost_guess(length);
  double comp2 = 2*cost_guess(good_size(2*length-1));
  comp2*=1.5;
  if (comp2<comp1)
    {
    plan->blueplan=make_fftblue_plan(length);
    if (!plan->blueplan) { DEALLOC(plan); return ((void*)0); }
    }
  else
    {
    plan->packplan=make_rfftp_plan(length);
    if (!plan->packplan) { DEALLOC(plan); return ((void*)0); }
    }
  return plan;
  }
