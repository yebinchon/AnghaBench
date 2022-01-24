#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int info; } ;
struct TYPE_29__ {TYPE_3__ s; } ;
struct TYPE_30__ {scalar_t__ k; TYPE_4__ u; } ;
typedef  TYPE_5__ expdesc ;
struct TYPE_32__ {int freereg; } ;
struct TYPE_26__ {int /*<<< orphan*/  ts; } ;
struct TYPE_27__ {int token; TYPE_1__ seminfo; } ;
struct TYPE_31__ {int linenumber; int lastline; TYPE_2__ t; TYPE_7__* fs; } ;
typedef  TYPE_6__ LexState ;
typedef  TYPE_7__ FuncState ;

/* Variables and functions */
 int LUA_MULTRET ; 
 int /*<<< orphan*/  OP_CALL ; 
#define  TK_STRING 128 
 int /*<<< orphan*/  VCALL ; 
 scalar_t__ VNONRELOC ; 
 scalar_t__ VVOID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char,char,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13 (LexState *ls, expdesc *f) {
  FuncState *fs = ls->fs;
  expdesc args;
  int base, nparams;
  int line = ls->linenumber;
  switch (ls->t.token) {
    case '(': {  /* funcargs -> `(' [ explist1 ] `)' */
      if (line != ls->lastline)
        FUNC11(ls,"ambiguous syntax (function call x new statement)");
      FUNC10(ls);
      if (ls->t.token == ')')  /* arg list is empty? */
        args.k = VVOID;
      else {
        FUNC3(ls, &args);
        FUNC9(fs, &args);
      }
      FUNC0(ls, ')', '(', line);
      break;
    }
    case '{': {  /* funcargs -> constructor */
      FUNC2(ls, &args);
      break;
    }
    case TK_STRING: {  /* funcargs -> STRING */
      FUNC1(ls, &args, ls->t.seminfo.ts);
      FUNC10(ls);  /* must use `seminfo' before `next' */
      break;
    }
    default: {
      FUNC11(ls, "function arguments expected");
      return;
    }
  }
  FUNC12(f->k == VNONRELOC);
  base = f->u.s.info;  /* base register for call */
  if (FUNC4(args.k))
    nparams = LUA_MULTRET;  /* open call */
  else {
    if (args.k != VVOID)
      FUNC7(fs, &args);  /* close last argument */
    nparams = fs->freereg - (base+1);
  }
  FUNC5(f, VCALL, FUNC6(fs, OP_CALL, base, nparams+1, 2));
  FUNC8(fs, line);
  fs->freereg = base+1;  /* call remove function and arguments and leaves
                            (unless changed) one result */
}