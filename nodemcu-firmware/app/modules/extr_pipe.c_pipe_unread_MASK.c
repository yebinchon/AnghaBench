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
struct TYPE_4__ {int end; int start; int buf; } ;
typedef  TYPE_1__ buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_HEAD ; 
 size_t INVALID_LEN ; 
 int LUAL_BUFFERSIZE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC9(lua_State *L) {
  size_t l = INVALID_LEN;
  const char *s = FUNC5(L, 2, &l);
  if (l==0)
    return 0;
  FUNC1(L, l != INVALID_LEN, 2, "must be a string");
  buffer_t *ud = FUNC0(L, 1, AT_HEAD);

  do {
    int used = ud->end - ud->start, lrem = LUAL_BUFFERSIZE-used;

    if (used == LUAL_BUFFERSIZE) {
      int i, nUD = FUNC2(L, 1);
      for (i = nUD; i > 0; i--) {                       /* for i = nUD-1,1,-1 */
        FUNC3(L, 1, i); FUNC4(L, 1, i+1);        /* T[i+1] = T[i] */  
      }
      ud = FUNC8(L, 1, 1);
      used = 0; lrem = LUAL_BUFFERSIZE;
    } else if (ud->end < LUAL_BUFFERSIZE) {
      FUNC7(ud->buf + lrem, 
              ud->buf + ud->start, used); /* must be memmove not cpy */
    }
    ud->start = lrem; ud->end = LUAL_BUFFERSIZE;

    if (l <= (unsigned )lrem)
      break;

    /* If we've got here then the remaining string is strictly longer than the */
    /* remaining buffer space, so top off the buffer before looping around again */
    l -= lrem;    
    FUNC6(ud->buf, s + l, lrem);
    ud->start = 0;

  } while(1);

  /* Copy any residual tail to the UD buffer.  Note that this is l>0 and  */
  ud->start -= l;  
  FUNC6(ud->buf + ud->start, s, l);
	return 0;
}