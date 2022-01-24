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
struct TYPE_4__ {char const* tag; } ;
typedef  TYPE_1__ mpc_ast_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 char const* FUNC1 (char const*,int) ; 
 int FUNC2 (char const*) ; 

mpc_ast_t *FUNC3(mpc_ast_t *a, const char *t) {
  if (!a) { return a; }
  a->tag = FUNC1(a->tag, FUNC2(t) + 1 + FUNC2(a->tag) + 1);
  FUNC0(a->tag + FUNC2(t) + 1, a->tag, FUNC2(a->tag)+1);
  FUNC0(a->tag, t, FUNC2(t));
  FUNC0(a->tag + FUNC2(t), "|", 1);
  return a;
}