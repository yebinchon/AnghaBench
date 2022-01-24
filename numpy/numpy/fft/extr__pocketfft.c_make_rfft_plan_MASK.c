#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* rfft_plan ;
struct TYPE_5__ {void* packplan; scalar_t__ blueplan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (size_t) ; 
 size_t FUNC3 (int) ; 
 scalar_t__ FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (size_t) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  rfft_plan_i ; 
 scalar_t__ FUNC7 (size_t) ; 

__attribute__((used)) static rfft_plan FUNC8 (size_t length)
  {
  if (length==0) return NULL;
  rfft_plan plan = FUNC1(rfft_plan_i,1);
  if (!plan) return NULL;
  plan->blueplan=0;
  plan->packplan=0;
  if ((length<50) || (FUNC4(length)<=FUNC7(length)))
    {
    plan->packplan=FUNC6(length);
    if (!plan->packplan) { FUNC0(plan); return NULL; }
    return plan;
    }
  double comp1 = 0.5*FUNC2(length);
  double comp2 = 2*FUNC2(FUNC3(2*length-1));
  comp2*=1.5; /* fudge factor that appears to give good overall performance */
  if (comp2<comp1) // use Bluestein
    {
    plan->blueplan=FUNC5(length);
    if (!plan->blueplan) { FUNC0(plan); return NULL; }
    }
  else
    {
    plan->packplan=FUNC6(length);
    if (!plan->packplan) { FUNC0(plan); return NULL; }
    }
  return plan;
  }