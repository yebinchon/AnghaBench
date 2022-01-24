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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int end; int start; char const* buf; } ;
typedef  TYPE_1__ buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_HEAD ; 
 int CHAR_DELIM ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(lua_State *L) {
  buffer_t *ud = FUNC0(L, 1, AT_HEAD);
  int i, k=0, n;
  FUNC10(L,2);
  const char delim = FUNC2(L, 2, &n);
  FUNC5(L,1);

  while (ud && n) {
    int want, used, avail = ud->end - ud->start;

    if (n < 0 /* one of the CHAR_DELIM flags */) {
      /* getting a delimited chunk so scan for delimiter */
      for (i = ud->start; i < ud->end && ud->buf[i] != delim; i++) {}
      /* Can't have i = ud->end and ud->buf[i] == delim so either */
      /* we've scanned full buffer avail OR we've hit a delim char */
      if (i == ud->end) {
        want = used = avail;        /* case where we've scanned without a hit */
      } else {
        want = used = i + 1 - ud->start;      /* case where we've hit a delim */
        if (n == CHAR_DELIM)
          want--;
      }
    } else {
      want = used = (n < avail) ? n : avail;
      n -= used;
    }
    FUNC6(L, ud->buf + ud->start, want);            /* part we want */
    k++;
    ud->start += used;
    if (ud->start == ud->end) {
      /* shift the pipe array down overwriting T[1] */
      int nUD = FUNC4(L, 1);
      for (i = 1; i < nUD; i++) {                         /* for i = 1, nUD-1 */
        FUNC8(L, 1, i+1); FUNC9(L, 1, i);        /* T[i] = T[i+1] */  
      }
      FUNC7(L); FUNC9(L, 1, nUD--);                 /* T[n] = nil */
      if (nUD) {
        FUNC8(L, 1, 1);
        ud = FUNC1(L, -1);
        FUNC5(L, 1);
      } else {
        ud = NULL;
      }
    }
  }
  if (k)
    FUNC3(L, k);
  else
    FUNC7(L);
  return 1;
}