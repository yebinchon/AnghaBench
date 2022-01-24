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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct ip_info {TYPE_1__ gw; TYPE_1__ netmask; TYPE_1__ ip; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ip_info*) ; 

__attribute__((used)) static int FUNC5( lua_State* L, uint8_t mode )
{
  struct ip_info pTempIp;
  char temp[64];
  FUNC4(mode, &pTempIp);
  if(pTempIp.ip.addr==0){
    FUNC1(L);
    return 1;
  }
  else
  {
    FUNC3(temp, "%d.%d.%d.%d", FUNC0(&pTempIp.ip) );
    FUNC2( L, temp );
    FUNC3(temp, "%d.%d.%d.%d", FUNC0(&pTempIp.netmask) );
    FUNC2( L, temp );
    FUNC3(temp, "%d.%d.%d.%d", FUNC0(&pTempIp.gw) );
    FUNC2( L, temp );
    return 3;
  }
}