#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_20__ {scalar_t__ flags; int /*<<< orphan*/  metatable; } ;
typedef  TYPE_2__ Table ;
typedef  int /*<<< orphan*/  const TValue ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int MAXTAGLOOP ; 
 int /*<<< orphan*/  TM_NEWINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC7 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

void FUNC19 (lua_State *L, const TValue *t, TValue *key, StkId val) {
  int loop;
  TValue temp;
  FUNC9(L->top);
  L->top++;
  FUNC2(L);
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    const TValue *tm = NULL;
    if (FUNC17(t)) {  /* `t' is a table? */
      Table *h = FUNC3(t);
      TValue *oldval = FUNC7(L, h, key); /* do a primitive set */
      if ((!FUNC15(oldval)) ||  /* result is no nil? */
          (tm = FUNC1(L, h->metatable, TM_NEWINDEX)) == NULL) {
        L->top--;
        FUNC18(L);
        FUNC12(L, oldval, val);
        ((Table *)h)->flags = 0;
        FUNC4(L, (Table*)h, val);
        return;
      }
      /* else will try the tag method */
    }
    else if (FUNC16(t)) {
      FUNC5(L, "invalid write to ROM variable");
    }
    else if (FUNC15(tm = FUNC8(L, t, TM_NEWINDEX)))
      FUNC6(L, t, "index");

    if (FUNC13(tm) || FUNC14(tm)) {
      L->top--;
      FUNC18(L);
      FUNC0(L, tm, t, key, val);
      return;
    }
    /* else repeat with `tm' */
    FUNC10(L, &temp, tm);  /* avoid pointing inside table (may rehash) */
    t = &temp;
    FUNC11(L, L->top-1, t);  /* need to protect value from EGC. */
  }
  FUNC5(L, "loop in settable");
}