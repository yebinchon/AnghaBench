#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void const* output; int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ mpc_result_t ;
typedef  int /*<<< orphan*/  mpc_parser_t ;
typedef  int /*<<< orphan*/  (* mpc_dtor_t ) (void const*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC2(mpc_parser_t *p, const char *s, const void *d,
  int(*tester)(const void*, const void*),
  mpc_dtor_t destructor,
  void(*printer)(const void*)) {
  mpc_result_t r;
  (void) printer;
  if (FUNC1("<test>", s, p, &r)) {

    if (tester(r.output, d)) {
      destructor(r.output);
      return 0;
    } else {
      destructor(r.output);
      return 1;
    }
  
  } else {
    FUNC0(r.error);
    return 1;
  }
  
}