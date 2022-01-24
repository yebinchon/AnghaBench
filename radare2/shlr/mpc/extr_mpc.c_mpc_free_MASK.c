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
typedef  int /*<<< orphan*/  mpc_mem_t ;
struct TYPE_4__ {scalar_t__* mem_full; scalar_t__ mem; } ;
typedef  TYPE_1__ mpc_input_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 

__attribute__((used)) static void FUNC2(mpc_input_t *i, void *p) {
  size_t j;
  if (!FUNC1(i, p)) { FUNC0(p); return; }
  j = ((size_t)(((char*)p) - ((char*)i->mem))) / sizeof(mpc_mem_t);
  i->mem_full[j] = 0;
}