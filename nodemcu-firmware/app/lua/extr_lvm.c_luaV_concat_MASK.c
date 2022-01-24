#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_18__ {int base; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ lu_mem ;
struct TYPE_20__ {size_t n; } ;
struct TYPE_19__ {size_t len; } ;
struct TYPE_17__ {scalar_t__ memlimit; TYPE_6__ buff; } ;
typedef  int StkId ;

/* Variables and functions */
 TYPE_15__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ MAX_SIZET ; 
 int /*<<< orphan*/  TM_CONCAT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,size_t) ; 
 char* FUNC6 (TYPE_1__*,TYPE_6__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 
 TYPE_3__* FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

void FUNC16 (lua_State *L, int total, int last) {
  lu_mem max_sizet = MAX_SIZET;
  if (FUNC0(L)->memlimit < max_sizet) max_sizet = FUNC0(L)->memlimit;
  do {
    /* Any call which does a memory allocation may trim the stack,
       invalidating top unless the stack is fixed during the allocation */
    StkId top = L->base + last + 1;
    FUNC2(L);
    int n = 2;  /* number of elements handled in this pass (at least 2) */
    if (!(FUNC14(top-2) || FUNC13(top-2)) || !FUNC11(L, top-1)) {
      FUNC15(L);
      if (!FUNC1(L, top-2, top-1, top-2, TM_CONCAT)) {
        /* restore 'top' pointer, since stack might have been reallocted */
        top = L->base + last + 1;
        FUNC3(L, top-2, top-1);
      }
    } else if (FUNC12(top-1)->len == 0) { /* second op is empty? */
      (void)FUNC11(L, top - 2);  /* result is first op (as string) */
    } else {
      /* at least two string values; get as many as possible */
      size_t tl = FUNC12(top-1)->len;
      char *buffer;
      int i;
      /* collect total length */
      for (n = 1; n < total && FUNC11(L, top-n-1); n++) {
        size_t l = FUNC12(top-n-1)->len;
        if (l >= max_sizet - tl) FUNC4(L, "string length overflow");
        tl += l;
      }
      FUNC0(L)->buff.n = tl;
      buffer = FUNC6(L, &FUNC0(L)->buff, tl);
      tl = 0;
      for (i=n; i>0; i--) {  /* concat all strings */
        size_t l = FUNC12(top-i)->len;
        FUNC8(buffer+tl, FUNC10(top-i), l);
        tl += l;
      }
      FUNC9(L, top-n, FUNC5(L, buffer, tl));
      FUNC7(&FUNC0(L)->buff);
    }
    total -= n-1;  /* got `n' strings to create 1 new */
    last -= n-1;
    FUNC15(L);
  } while (total > 1);  /* repeat until only 1 result left */
}