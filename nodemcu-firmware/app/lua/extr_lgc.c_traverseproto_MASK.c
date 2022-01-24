#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_6__ {int sizek; int sizeupvalues; int sizep; int sizelocvars; TYPE_1__* locvars; scalar_t__* p; scalar_t__* upvalues; int /*<<< orphan*/ * k; scalar_t__ source; } ;
struct TYPE_5__ {scalar_t__ varname; } ;
typedef  TYPE_2__ Proto ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4 (global_State *g, Proto *f) {
  int i;
  if (FUNC0(f))
    return;                   /* don't traverse Protos in LFS */
  if (f->source) FUNC3(f->source);
  for (i=0; i<f->sizek; i++)  /* mark literals */
    FUNC2(g, &f->k[i]);
  for (i=0; i<f->sizeupvalues; i++) {  /* mark upvalue names */
    if (f->upvalues[i])
      FUNC3(f->upvalues[i]);
  }
  for (i=0; i<f->sizep; i++) {  /* mark nested protos */
    if (f->p[i])
      FUNC1(g, f->p[i]);
  }
  for (i=0; i<f->sizelocvars; i++) {  /* mark local-variable names */
    if (f->locvars[i].varname)
      FUNC3(f->locvars[i].varname);
  }
}