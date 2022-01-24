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
typedef  int /*<<< orphan*/  os_param_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ rate; scalar_t__ self_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ PCM_RATE_16K ; 
 scalar_t__ PCM_RATE_1K ; 
 int /*<<< orphan*/  PCM_RATE_8K ; 
 TYPE_1__* cfg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pcm_start_play_task ; 
 scalar_t__ pud ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( lua_State *L )
{
  FUNC0();

  cfg->rate = FUNC2( L, 2, PCM_RATE_8K );

  FUNC1( L, (cfg->rate >= PCM_RATE_1K) && (cfg->rate <= PCM_RATE_16K), 2, "invalid bit rate" );

  if (cfg->self_ref == LUA_NOREF) {
    FUNC4( L, 1 );  // copy self userdata to the top of stack
    cfg->self_ref = FUNC3( L, LUA_REGISTRYINDEX );
  }

  // schedule actions for play in separate task since drv:play() might have been called
  // in the callback fn of pcm_data_play() which in turn gets called when starting play...
  FUNC5( pcm_start_play_task, (os_param_t)pud );

  return 0;
}