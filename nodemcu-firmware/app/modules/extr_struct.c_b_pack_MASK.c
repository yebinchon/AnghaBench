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
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_5__ {int /*<<< orphan*/  endian; } ;
typedef  TYPE_1__ Header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (size_t,TYPE_1__*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 double FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (int /*<<< orphan*/ *,int,char const**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC15 (lua_State *L) {
  luaL_Buffer b;
  const char *fmt = FUNC10(L, 1);
  Header h;
  int arg = 2;
  size_t totalsize = 0;
  FUNC2(&h);
  FUNC12(L);  /* mark to separate arguments from string buffer */
  FUNC7(L, &b);
  while (*fmt != '\0') {
    int opt = *fmt++;
    size_t size = FUNC13(L, opt, &fmt);
    int toalign = FUNC3(totalsize, &h, opt, size);
    totalsize += toalign;
    while (toalign-- > 0) FUNC4(&b, '\0');
    switch (opt) {
      case 'b': case 'B': case 'h': case 'H':
      case 'l': case 'L': case 'T': case 'i': case 'I': {  /* integer types */
        FUNC14(L, &b, arg++, h.endian, size);
        break;
      }
      case 'x': {
        FUNC4(&b, '\0');
        break;
      }
#ifndef LUA_NUMBER_INTEGRAL
      case 'f': {
        float f = (float)FUNC9(L, arg++);
        FUNC1((char *)&f, size, h.endian);
        FUNC5(&b, (char *)&f, size);
        break;
      }
      case 'd': {
        double d = FUNC9(L, arg++);
        FUNC1((char *)&d, size, h.endian);
        FUNC5(&b, (char *)&d, size);
        break;
      }
#endif
      case 'c': case 's': {
        size_t l;
        const char *s = FUNC8(L, arg++, &l);
        if (size == 0) size = l;
        FUNC6(L, l >= (size_t)size, arg, "string too short");
        FUNC5(&b, s, size);
        if (opt == 's') {
          FUNC4(&b, '\0');  /* add zero at the end */
          size++;
        }
        break;
      }
      default: FUNC0(L, opt, &fmt, &h);
    }
    totalsize += size;
  }
  FUNC11(&b);
  return 1;
}