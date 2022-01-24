#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct ip_info {TYPE_3__ gw; TYPE_2__ netmask; TYPE_1__ ip; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ SOFTAP_IF ; 
 scalar_t__ STATION_IF ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct ip_info*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct ip_info*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9( lua_State* L, uint8_t mode )
{
  struct ip_info pTempIp;
  FUNC4(mode, &pTempIp);

  if (!FUNC1(L, 1))
    return FUNC0( L, "wrong arg type" );
  uint32_t ip = FUNC3(L, "ip");
  if(ip!=0)
    pTempIp.ip.addr = ip;

  ip = FUNC3(L, "netmask");
  if(ip!=0)
    pTempIp.netmask.addr = ip;

  ip = FUNC3(L, "gateway");
  if(mode==SOFTAP_IF || ip!=0)
    pTempIp.gw.addr = ip;

  if(STATION_IF == mode)
  {
    FUNC8();
    FUNC2(L,FUNC5(mode, &pTempIp));
  }
  else
  {
    FUNC7();
    FUNC2(L,FUNC5(mode, &pTempIp));
    FUNC6();
  }

  return 1;
}