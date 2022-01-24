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
struct TYPE_3__ {int /*<<< orphan*/ * children; scalar_t__ children_num; int /*<<< orphan*/  state; void* contents; void* tag; } ;
typedef  TYPE_1__ mpc_ast_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*) ; 
 int FUNC3 (char const*) ; 

mpc_ast_t *FUNC4(const char *tag, const char *contents) {
  
  mpc_ast_t *a = FUNC0(sizeof(mpc_ast_t));
  
  a->tag = FUNC0(FUNC3(tag) + 1);
  FUNC2(a->tag, tag);
  
  a->contents = FUNC0(FUNC3(contents) + 1);
  FUNC2(a->contents, contents);
  
  a->state = FUNC1();
  
  a->children_num = 0;
  a->children = NULL;
  return a;
  
}