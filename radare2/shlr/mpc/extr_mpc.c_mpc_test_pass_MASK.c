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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(mpc_parser_t *p, const char *s, const void *d,
  int(*tester)(const void*, const void*), 
  mpc_dtor_t destructor, 
  void(*printer)(const void*)) {

  mpc_result_t r;  
  if (FUNC2("<test>", s, p, &r)) {
    
    if (tester(r.output, d)) {
      destructor(r.output);
      return 1;
    } else {
      FUNC3("Got "); printer(r.output); FUNC3("\n");
      FUNC3("Expected "); printer(d); FUNC3("\n");
      destructor(r.output);
      return 0;
    }
    
  } else {    
    FUNC1(r.error);
    FUNC0(r.error);
    return 0;
    
  }
  
}