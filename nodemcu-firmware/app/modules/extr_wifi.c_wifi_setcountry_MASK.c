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
struct TYPE_3__ {int* cc; int schan; int nchan; int policy; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ wifi_country_t ;
typedef  int uint8 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int WIFI_COUNTRY_POLICY_AUTO ; 
 int WIFI_COUNTRY_POLICY_MANUAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int,int,int) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,char const*,size_t) ; 
 int FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC16( lua_State* L ){
  size_t len;
  uint8 start_ch;
  uint8 end_ch;
  wifi_country_t cfg = {0};

  if(FUNC11(L, 1)){
    FUNC7(L, 1, "country");
    if (!FUNC8(L, -1)){
      if( FUNC10(L, -1) ){
        const char *country_code = FUNC4( L, -1, &len );
        FUNC2(L, (len==2 && FUNC1(country_code[0]) && FUNC1(country_code[1])), 1, "country: country code must be 2 chars");
        FUNC14(cfg.cc, country_code, len);
        if(cfg.cc[0] >= 0x61) cfg.cc[0]=cfg.cc[0]-32; //if lowercase change to uppercase
        if(cfg.cc[1] >= 0x61) cfg.cc[1]=cfg.cc[1]-32; //if lowercase change to uppercase
      }
      else
        return FUNC3( L, 1, "country: must be string" );
    }
    else{
      cfg.cc[0]='C';
      cfg.cc[1]='N';
      cfg.cc[2]=0x00;
    }
    FUNC12(L, 1);

    FUNC7(L, 1, "start_ch");
    if (!FUNC8(L, -1)){
      if(FUNC9(L, -1)){
        start_ch = (uint8)FUNC5(L, -1);
        FUNC2(L, (start_ch >= 1 && start_ch <= 14), 1, "start_ch: Range:1-14");
        cfg.schan = start_ch;
      }
      else
        FUNC3(L, 1, "start_ch: must be a number");
    }
    else
      cfg.schan = 1;

    FUNC12(L, 1);

    FUNC7(L, 1, "end_ch");
    if (!FUNC8(L, -1)){
      if(FUNC9(L, -1)){
        end_ch = (uint8)FUNC5(L, -1);
        FUNC2(L, (end_ch >= 1 && end_ch <= 14), 1, "end_ch: Range:1-14");
        FUNC2(L, (end_ch >= cfg.schan), 1, "end_ch: can't be less than start_ch");
        cfg.nchan = (end_ch-cfg.schan)+1; //cfg.nchan must equal total number of channels
      }
      else
        FUNC3(L, 1, "end_ch: must be a number");
    }
    else
      cfg.nchan = (13-cfg.schan)+1;
    FUNC12(L, 1);

    FUNC7(L, 1, "policy");
    if (!FUNC8(L, -1)){
      if(FUNC9(L, -1)){
        uint8 policy = (uint8)FUNC5(L, -1);
        FUNC2(L, (policy == WIFI_COUNTRY_POLICY_AUTO || policy == WIFI_COUNTRY_POLICY_MANUAL), 1, "policy: must be 0 or 1");
        cfg.policy = policy;
      }
      else
        FUNC3(L, 1, "policy: must be a number");
    }
    else
      cfg.policy = WIFI_COUNTRY_POLICY_AUTO;
    FUNC12(L, 1);

    FUNC12(L, 1); //pop table from stack

    bool retval = FUNC15(&cfg);
    FUNC0("\n country_cfg:\tcc:\"%s\"\tschan:%d\tnchan:%d\tpolicy:%d\n", cfg.cc, cfg.schan, cfg.nchan, cfg.policy);

    if (retval==1)
      FUNC13(L, true);
    else
      return FUNC6(L, "Unable to set country info");
  }
  else
    return FUNC3(L, 1, "Table not found!");
  return 1;
}