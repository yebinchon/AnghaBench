
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* cfftp_plan ;
struct TYPE_4__ {struct TYPE_4__* mem; } ;


 int DEALLOC (TYPE_1__*) ;

__attribute__((used)) static void destroy_cfftp_plan (cfftp_plan plan)
  {
  DEALLOC(plan->mem);
  DEALLOC(plan);
  }
