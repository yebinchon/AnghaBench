#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ptrdiff_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {char const* src_init; char const* src_end; scalar_t__ level; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIALS ; 
 char* FUNC0 (char const*,size_t,char const*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (TYPE_1__*,char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC8 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10 (lua_State *L, int find) {
  size_t l1, l2;
  const char *s = FUNC1(L, 1, &l1);
  const char *p = FUNC1(L, 2, &l2);
  ptrdiff_t init = FUNC7(FUNC2(L, 3, 1), l1) - 1;
  if (init < 0) init = 0;
  else if ((size_t)(init) > l1) init = (ptrdiff_t)l1;
  if (find && (FUNC5(L, 4) ||  /* explicit request? */
      FUNC9(p, SPECIALS) == NULL)) {  /* or no special characters? */
    /* do a plain search */
    const char *s2 = FUNC0(s+init, l1-init, p, l2);
    if (s2) {
      FUNC3(L, s2-s+1);
      FUNC3(L, s2-s+l2);
      return 2;
    }
  }
  else {
    MatchState ms;
    int anchor = (*p == '^') ? (p++, 1) : 0;
    const char *s1=s+init;
    ms.L = L;
    ms.src_init = s;
    ms.src_end = s+l1;
    do {
      const char *res;
      ms.level = 0;
      if ((res=FUNC6(&ms, s1, p)) != NULL) {
        if (find) {
          FUNC3(L, s1-s+1);  /* start */
          FUNC3(L, res-s);   /* end */
          return FUNC8(&ms, NULL, 0) + 2;
        }
        else
          return FUNC8(&ms, s1, res);
      }
    } while (s1++ < ms.src_end && !anchor);
  }
  FUNC4(L);  /* not found */
  return 1;
}