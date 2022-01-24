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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  SIZETIMEFMT ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int,char*) ; 
 int /*<<< orphan*/  l_checktime ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,char*,size_t*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct tm*) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 size_t FUNC14 (char*,int /*<<< orphan*/ ,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16 (lua_State *L) {
  size_t slen;
  const char *s = FUNC8(L, 1, "%c", &slen);
  time_t t = FUNC7(L, l_checktime, 2, FUNC15(NULL));
  const char *se = s + slen;  /* 's' end */
  struct tm tmr, *stm;
  if (*s == '!') {  /* UTC? */
    stm = FUNC1(&t, &tmr);
    s++;  /* skip '!' */
  }
  else
    stm = FUNC2(&t, &tmr);
  if (stm == NULL)  /* invalid date? */
    return FUNC6(L,
                 "time result cannot be represented in this installation");
  if (FUNC13(s, "*t") == 0) {
    FUNC11(L, 0, 9);  /* 9 = number of fields */
    FUNC12(L, stm);
  }
  else {
    char cc[4];  /* buffer for individual conversion specifiers */
    luaL_Buffer b;
    cc[0] = '%';
    FUNC5(L, &b);
    while (s < se) {
      if (*s != '%')  /* not a conversion specifier? */
        FUNC3(&b, *s++);
      else {
        size_t reslen;
        char *buff = FUNC9(&b, SIZETIMEFMT);
        s++;  /* skip '%' */
        s = FUNC0(L, s, se - s, cc + 1);  /* copy specifier to 'cc' */
        reslen = FUNC14(buff, SIZETIMEFMT, cc, stm);
        FUNC4(&b, reslen);
      }
    }
    FUNC10(&b);
  }
  return 1;
}