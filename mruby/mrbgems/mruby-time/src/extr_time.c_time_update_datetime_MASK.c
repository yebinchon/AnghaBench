#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct mrb_time {scalar_t__ timezone; struct tm datetime; int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_sec ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 scalar_t__ MRB_TIMEZONE_UTC ; 
 struct tm* FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mrb_time*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mrb_time*
FUNC5(mrb_state *mrb, struct mrb_time *self, int dealloc)
{
  struct tm *aid;
  time_t t = self->sec;

  if (self->timezone == MRB_TIMEZONE_UTC) {
    aid = FUNC0(&t, &self->datetime);
  }
  else {
    aid = FUNC1(&t, &self->datetime);
  }
  if (!aid) {
    mrb_sec sec = (mrb_sec)t;

    if (dealloc) FUNC2(mrb, self);
    FUNC3(mrb, E_ARGUMENT_ERROR, "%v out of Time range", FUNC4(mrb, sec));
    /* not reached */
    return NULL;
  }
#ifdef NO_GMTIME_R
  self->datetime = *aid; /* copy data */
#endif

  return self;
}