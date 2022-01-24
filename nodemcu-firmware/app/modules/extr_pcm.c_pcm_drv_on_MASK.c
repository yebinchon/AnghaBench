#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ vu_freq; void* cb_vu_ref; void* cb_stopped_ref; void* cb_paused_ref; void* cb_drained_ref; void* cb_data_ref; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 scalar_t__ TRUE ; 
 TYPE_1__* cfg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static int FUNC11( lua_State *L )
{
  size_t len;
  const char *event;
  uint8_t is_func = FALSE;

  FUNC1();

  event = FUNC3( L, 2, &len );

  if ((FUNC9( L, 3 ) == LUA_TFUNCTION) ||
      (FUNC9( L, 3 ) == LUA_TLIGHTFUNCTION)) {
    FUNC8( L, 3 );  // copy argument (func) to the top of stack
    is_func = TRUE;
  }

  if ((len == 4) && (FUNC10( event, "data" ) == 0)) {
    FUNC6( L, LUA_REGISTRYINDEX, cfg->cb_data_ref);
    cfg->cb_data_ref = FUNC0( is_func );
  } else if ((len == 7) && (FUNC10( event, "drained" ) == 0)) {
    FUNC6( L, LUA_REGISTRYINDEX, cfg->cb_drained_ref);
    cfg->cb_drained_ref = FUNC0( is_func );
  } else if ((len == 6) && (FUNC10( event, "paused" ) == 0)) {
    FUNC6( L, LUA_REGISTRYINDEX, cfg->cb_paused_ref);
    cfg->cb_paused_ref = FUNC0( is_func );
  } else if ((len == 7) && (FUNC10( event, "stopped" ) == 0)) {
    FUNC6( L, LUA_REGISTRYINDEX, cfg->cb_stopped_ref);
    cfg->cb_stopped_ref = FUNC0( is_func );
  } else if ((len == 2) && (FUNC10( event, "vu" ) == 0)) {
    FUNC6( L, LUA_REGISTRYINDEX, cfg->cb_vu_ref);
    cfg->cb_vu_ref = FUNC0( is_func );

    int freq = FUNC5( L, 4, 10 );
    FUNC2( L, (freq > 0) && (freq <= 200), 4, "invalid range" );
    cfg->vu_freq = (uint8_t)freq;
  } else {
    if (is_func) {
      // need to pop pushed function arg
      FUNC7( L, 1 );
    }
    return FUNC4( L, "method not supported" );
  }

  return 0;
}