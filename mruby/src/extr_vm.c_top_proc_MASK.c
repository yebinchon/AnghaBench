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
struct RProc {struct RProc* upper; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct RProc*) ; 
 scalar_t__ FUNC1 (struct RProc*) ; 

__attribute__((used)) static inline struct RProc*
FUNC2(mrb_state *mrb, struct RProc *proc)
{
  while (proc->upper) {
    if (FUNC0(proc) || FUNC1(proc))
      return proc;
    proc = proc->upper;
  }
  return proc;
}