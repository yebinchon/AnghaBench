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
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int TMS ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
#define  TM_ADD 134 
#define  TM_DIV 133 
#define  TM_MOD 132 
#define  TM_MUL 131 
#define  TM_POW 130 
#define  TM_SUB 129 
#define  TM_UNM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15 (lua_State *L, StkId ra, const TValue *rb,
                   const TValue *rc, TMS op) {
  TValue tempb, tempc;
  const TValue *b, *c;
  if ((b = FUNC2(rb, &tempb)) != NULL &&
      (c = FUNC2(rc, &tempc)) != NULL) {
    lua_Number nb = FUNC11(b), nc = FUNC11(c);
    switch (op) {
      case TM_ADD: FUNC14(ra, FUNC6(nb, nc)); break;
      case TM_SUB: FUNC14(ra, FUNC9(nb, nc)); break;
      case TM_MUL: FUNC14(ra, FUNC7(nb, nc)); break;
      case TM_DIV: FUNC14(ra, FUNC4(nb, nc)); break;
      case TM_MOD: FUNC14(ra, FUNC5(nb, nc)); break;
      case TM_POW: FUNC14(ra, FUNC8(nb, nc)); break;
      case TM_UNM: FUNC14(ra, FUNC10(nb)); break;
      default: FUNC3(0); break;
    }
  }
  else {
    ptrdiff_t br = FUNC13(L, rb);
    ptrdiff_t cr = FUNC13(L, rc);
    if (!FUNC0(L, rb, rc, ra, op)) {
      FUNC1(L, FUNC12(L, br), FUNC12(L, cr));
    }
  }
}