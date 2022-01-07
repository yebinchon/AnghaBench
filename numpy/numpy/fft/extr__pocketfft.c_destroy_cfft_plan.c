
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* cfft_plan ;
struct TYPE_4__ {scalar_t__ packplan; scalar_t__ blueplan; } ;


 int DEALLOC (TYPE_1__*) ;
 int destroy_cfftp_plan (scalar_t__) ;
 int destroy_fftblue_plan (scalar_t__) ;

__attribute__((used)) static void destroy_cfft_plan (cfft_plan plan)
  {
  if (plan->blueplan)
    destroy_fftblue_plan(plan->blueplan);
  if (plan->packplan)
    destroy_cfftp_plan(plan->packplan);
  DEALLOC(plan);
  }
