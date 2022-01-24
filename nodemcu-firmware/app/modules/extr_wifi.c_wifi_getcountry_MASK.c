#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* cc; scalar_t__ policy; scalar_t__ nchan; scalar_t__ schan; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ wifi_country_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6( lua_State* L ){

  wifi_country_t cfg = {0};


  if(FUNC5(&cfg)){
    FUNC1(L);

    FUNC3(L, "country");
    FUNC3(L, cfg.cc);
    FUNC4(L, -3);

    FUNC3(L, "start_ch");
    FUNC2(L, cfg.schan);
    FUNC4(L, -3);

    FUNC3(L, "end_ch");
    FUNC2(L, (cfg.schan + cfg.nchan)-1);
    FUNC4(L, -3);

    FUNC3(L, "policy");
    FUNC2(L, cfg.policy);
    FUNC4(L, -3);

    return 1;
  }
  else{
    return FUNC0(L, "Unable to get country info");
  }
}