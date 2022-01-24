#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  token; } ;
struct TYPE_13__ {TYPE_2__* fs; TYPE_3__ t; } ;
struct TYPE_11__ {scalar_t__ freereg; scalar_t__ nactvar; TYPE_1__* f; } ;
struct TYPE_10__ {scalar_t__ maxstacksize; } ;
typedef  TYPE_4__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char) ; 

__attribute__((used)) static void FUNC6 (LexState *ls) {
  /* chunk -> { stat [`;'] } */
  int islast = 0;
  FUNC1(ls);
  while (!islast && !FUNC0(ls->t.token)) {
    islast = FUNC4(ls);
    FUNC5(ls, ';');
    FUNC3(ls->fs->f->maxstacksize >= ls->fs->freereg &&
               ls->fs->freereg >= ls->fs->nactvar);
    ls->fs->freereg = ls->fs->nactvar;  /* free registers */
  }
  FUNC2(ls);
}