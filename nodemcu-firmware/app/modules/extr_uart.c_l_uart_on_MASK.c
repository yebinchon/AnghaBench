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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 scalar_t__ LUA_TNUMBER ; 
 int end_char ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int need_len ; 
 int run_input ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 scalar_t__ uart_receive_rf ; 

__attribute__((used)) static int FUNC14( lua_State* L )
{
  size_t sl, el;
  int32_t run = 1;
  uint8_t stack = 1;
  const char *method = FUNC1( L, stack, &sl );
  stack++;
  if (method == NULL)
    return FUNC2( L, "wrong arg type" );

  if( FUNC12( L, stack ) == LUA_TNUMBER )
  {
    need_len = ( uint16_t )FUNC0( L, stack );
    stack++;
    end_char = -1;
    if( need_len > 255 ){
      need_len = 255;
      return FUNC2( L, "wrong arg range" );
    }
  }
  else if(FUNC7(L, stack))
  {
    const char *end = FUNC1( L, stack, &el );
    stack++;
    if(el!=1){
      return FUNC2( L, "wrong arg range" );
    }
    end_char = (int16_t)end[0];
    need_len = 0;
  }

  // luaL_checkanyfunction(L, stack);
  if (FUNC12(L, stack) == LUA_TFUNCTION || FUNC12(L, stack) == LUA_TLIGHTFUNCTION){
    if ( FUNC6(L, stack+1) ){
      run = FUNC11(L, stack+1);
    }
    FUNC10(L, stack);  // copy argument (func) to the top of stack
  } else {
    FUNC9(L);
  }
  if(sl == 4 && FUNC13(method, "data") == 0){
    run_input = true;
    if(uart_receive_rf != LUA_NOREF){
      FUNC4(L, LUA_REGISTRYINDEX, uart_receive_rf);
      uart_receive_rf = LUA_NOREF;
    }
    if(!FUNC5(L, -1)){
      uart_receive_rf = FUNC3(L, LUA_REGISTRYINDEX);
      if(run==0)
        run_input = false;
    } else {
      FUNC8(L, 1);
    }
  }else{
    FUNC8(L, 1);
    return FUNC2( L, "method not supported" );
  }
  return 0;
}