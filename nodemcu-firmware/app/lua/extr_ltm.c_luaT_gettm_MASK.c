#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TString ;
typedef  unsigned int TMS ;

/* Variables and functions */
 unsigned int TM_EQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 

const TValue *FUNC6 (Table *events, TMS event, TString *ename) {
  const TValue *tm;
  FUNC4(event <= TM_EQ);

  if (FUNC3(events)) {
    tm =  FUNC2(events, ename);
    if (FUNC5(tm)) {  /* no tag method? */
      return NULL;
    }
  } else {
    tm = FUNC1(events, ename);
    if (FUNC5(tm)) {  /* no tag method? */
      events->flags |= FUNC0(1u<<event);  /* cache this fact */
      return NULL;
    }
  }
  return tm;
}