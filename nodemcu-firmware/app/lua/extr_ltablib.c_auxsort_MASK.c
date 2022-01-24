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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC6 (lua_State *L, int l, int u) {
  while (l < u) {  /* for tail recursion */
    int i, j;
    /* sort elements a[l], a[(l+u)/2] and a[u] */
    FUNC3(L, 1, l);
    FUNC3(L, 1, u);
    if (FUNC5(L, -1, -2))  /* a[u] < a[l]? */
      FUNC4(L, l, u);  /* swap a[l] - a[u] */
    else
      FUNC1(L, 2);
    if (u-l == 1) break;  /* only 2 elements */
    i = (l+u)/2;
    FUNC3(L, 1, i);
    FUNC3(L, 1, l);
    if (FUNC5(L, -2, -1))  /* a[i]<a[l]? */
      FUNC4(L, i, l);
    else {
      FUNC1(L, 1);  /* remove a[l] */
      FUNC3(L, 1, u);
      if (FUNC5(L, -1, -2))  /* a[u]<a[i]? */
        FUNC4(L, i, u);
      else
        FUNC1(L, 2);
    }
    if (u-l == 2) break;  /* only 3 elements */
    FUNC3(L, 1, i);  /* Pivot */
    FUNC2(L, -1);
    FUNC3(L, 1, u-1);
    FUNC4(L, i, u-1);
    /* a[l] <= P == a[u-1] <= a[u], only need to sort from l+1 to u-2 */
    i = l; j = u-1;
    for (;;) {  /* invariant: a[l..i] <= P <= a[j..u] */
      /* repeat ++i until a[i] >= P */
      while (FUNC3(L, 1, ++i), FUNC5(L, -1, -2)) {
        if (i>u) FUNC0(L, "invalid order function for sorting");
        FUNC1(L, 1);  /* remove a[i] */
      }
      /* repeat --j until a[j] <= P */
      while (FUNC3(L, 1, --j), FUNC5(L, -3, -1)) {
        if (j<l) FUNC0(L, "invalid order function for sorting");
        FUNC1(L, 1);  /* remove a[j] */
      }
      if (j<i) {
        FUNC1(L, 3);  /* pop pivot, a[i], a[j] */
        break;
      }
      FUNC4(L, i, j);
    }
    FUNC3(L, 1, u-1);
    FUNC3(L, 1, i);
    FUNC4(L, u-1, i);  /* swap pivot (a[u-1]) with a[i] */
    /* a[l..i-1] <= a[i] == P <= a[i+1..u] */
    /* adjust so that smaller half is in [j..i] and larger one in [l..u] */
    if (i-l < u-i) {
      j=l; i=i-1; l=i+2;
    }
    else {
      j=i+1; i=u; u=j-2;
    }
    FUNC6(L, j, i);  /* call recursively the smaller one */
  }  /* repeat the routine for the larger one */
}