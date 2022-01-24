#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ k; } ;
typedef  TYPE_2__ expdesc ;
struct TYPE_21__ {int nactvar; int freereg; } ;
struct TYPE_18__ {char token; } ;
struct TYPE_20__ {TYPE_1__ t; TYPE_4__* fs; } ;
typedef  TYPE_3__ LexState ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LUA_MULTRET ; 
 int /*<<< orphan*/  OP_TAILCALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VCALL ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12 (LexState *ls) {
  /* stat -> RETURN explist */
  FuncState *fs = ls->fs;
  expdesc e;
  int first, nret;  /* registers with returned values */
  FUNC10(ls);  /* skip RETURN */
  if (FUNC2(ls->t.token) || ls->t.token == ';')
    first = nret = 0;  /* return no values */
  else {
    nret = FUNC3(ls, &e);  /* optional return values */
    if (FUNC5(e.k)) {
      FUNC9(fs, &e);
      if (e.k == VCALL && nret == 1) {  /* tail call? */
        FUNC1(FUNC4(fs,&e), OP_TAILCALL);
        FUNC11(FUNC0(FUNC4(fs,&e)) == fs->nactvar);
      }
      first = fs->nactvar;
      nret = LUA_MULTRET;  /* return all values */
    }
    else {
      if (nret == 1)  /* only one single value? */
        first = FUNC6(fs, &e);
      else {
        FUNC7(fs, &e);  /* values must go to the `stack' */
        first = fs->nactvar;  /* return all `active' values */
        FUNC11(nret == fs->freereg - first);
      }
    }
  }
  FUNC8(fs, first, nret);
}