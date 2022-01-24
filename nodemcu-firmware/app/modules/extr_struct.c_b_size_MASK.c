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
typedef  int /*<<< orphan*/  Header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (size_t,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int,char const**) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  Header h;
  const char *fmt = FUNC5(L, 1);
  size_t pos = 0;
  FUNC1(&h);
  while (*fmt) {
    int opt = *fmt++;
    size_t size = FUNC7(L, opt, &fmt);
    pos += FUNC2(pos, &h, opt, size);
    if (opt == 's')
      FUNC4(L, 1, "option 's' has no fixed size");
    else if (opt == 'c' && size == 0)
      FUNC4(L, 1, "option 'c0' has no fixed size");
    if (!FUNC3(opt))
      FUNC0(L, opt, &fmt, &h);
    pos += size;
  }
  FUNC6(L, pos);
  return 1;
}