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
 int /*<<< orphan*/  GET_FILE_OBJ ; 
 int /*<<< orphan*/  argpos ; 
 int /*<<< orphan*/  fd ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC5( lua_State* L )
{
  GET_FILE_OBJ;

  if(!fd)
    return FUNC1(L, "open a file first");
  size_t l, rl;
  const char *s = FUNC0(L, argpos, &l);
  rl = FUNC4(fd, s, l);
  if(rl==l){
    rl = FUNC4(fd, "\n", 1);
    if(rl==1)
      FUNC2(L, 1);
    else
      FUNC3(L);
  }
  else{
    FUNC3(L);
  }
  return 1;
}