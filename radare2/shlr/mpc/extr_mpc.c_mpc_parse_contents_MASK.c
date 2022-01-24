#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/ * output; } ;
typedef  TYPE_1__ mpc_result_t ;
typedef  int /*<<< orphan*/  mpc_parser_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC4(const char *filename, mpc_parser_t *p, mpc_result_t *r) {
  
  FILE *f = FUNC1(filename, "rb");
  int res;
  
  if (!f) {
    r->output = NULL;
    r->error = FUNC2(filename, "Unable to open file!");
    return 0;
  }
  
  res = FUNC3(filename, f, p, r);
  FUNC0(f);
  return res;
}