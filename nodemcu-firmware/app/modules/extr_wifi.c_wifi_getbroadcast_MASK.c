#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32 ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {int addr; } ;
struct ip_info {TYPE_1__ netmask; TYPE_2__ ip; } ;
struct ip_addr {int addr; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (struct ip_addr*) ; 
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
    struct ip_addr broadcast_address;

    uint32 subnet_mask32 = pTempIp.netmask.addr & pTempIp.ip.addr;
    uint32 broadcast_address32 = ~pTempIp.netmask.addr | subnet_mask32;
    broadcast_address.addr = broadcast_address32;

    FUNC3(temp, "%d.%d.%d.%d", FUNC0(&broadcast_address) );
    FUNC2( L, temp );

    return 1;
  }
}