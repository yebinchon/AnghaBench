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
struct TYPE_3__ {int nCol; int mxSample; int /*<<< orphan*/  db; int /*<<< orphan*/  current; int /*<<< orphan*/ * a; int /*<<< orphan*/ * aBest; } ;
typedef  TYPE_1__ Stat4Accum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(void *pOld){
  Stat4Accum *p = (Stat4Accum*)pOld;
#ifdef SQLITE_ENABLE_STAT3_OR_STAT4
  int i;
  for(i=0; i<p->nCol; i++) sampleClear(p->db, p->aBest+i);
  for(i=0; i<p->mxSample; i++) sampleClear(p->db, p->a+i);
  sampleClear(p->db, &p->current);
#endif
  FUNC1(p->db, p);
}