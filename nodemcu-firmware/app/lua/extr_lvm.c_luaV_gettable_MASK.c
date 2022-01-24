#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {struct TYPE_5__* metatable; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int MAXTAGLOOP ; 
 int /*<<< orphan*/  TM_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*) ; 

void FUNC17 (lua_State *L, const TValue *t, TValue *key, StkId val) {
  int loop;
  TValue temp;
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    const TValue *tm;

    if (FUNC16(t)) {  /* `t' is a table? */
      Table *h = FUNC2(t);
      const TValue *res = FUNC5(h, key); /* do a primitive get */
      if (!FUNC14(res) ||  /* result is no nil? */
          (tm = FUNC1(L, h->metatable, TM_INDEX)) == NULL) { /* or no TM? */
        FUNC11(L, val, res);
        return;
      }
      /* else will try the tag method */
    } else if (FUNC15(t)) {  /* `t' is a table? */
      void *h = FUNC9(t);
      const TValue *res = FUNC6(h, key); /* do a primitive get */
      if (!FUNC14(res) ||  /* result is no nil? */
          (tm = FUNC1(L, (Table*)FUNC7(h), TM_INDEX)) == NULL) { /* or no TM? */
        FUNC11(L, val, res);
        return;
      }
      /* else will try the tag method */
    }
    else if (FUNC14(tm = FUNC8(L, t, TM_INDEX)))
        FUNC4(L, t, "index");

    if (FUNC12(tm) || FUNC13(tm)) {
      FUNC0(L, val, tm, t, key);
      return;
    }
    /* else repeat with `tm' */
    FUNC10(L, &temp, tm);  /* avoid pointing inside table (may rehash) */
    t = &temp;
  }
  FUNC3(L, "loop in gettable");
}