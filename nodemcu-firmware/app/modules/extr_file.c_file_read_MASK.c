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
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 scalar_t__ EOF ; 
 unsigned int FILE_READ_CHUNK ; 
 int /*<<< orphan*/  GET_FILE_OBJ ; 
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  argpos ; 
 int /*<<< orphan*/  fd ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( lua_State* L )
{
  unsigned need_len = FILE_READ_CHUNK;
  int16_t end_char = EOF;
  size_t el;

  GET_FILE_OBJ;

  if( FUNC5( L, argpos ) == LUA_TNUMBER )
  {
    need_len = ( unsigned )FUNC1( L, argpos );
  }
  else if(FUNC4(L, argpos))
  {
    const char *end = FUNC2( L, argpos, &el );
    if(el!=1){
      return FUNC3( L, "wrong arg range" );
    }
    end_char = (int16_t)end[0];
  }

  return FUNC0(L, need_len, end_char, fd);
}