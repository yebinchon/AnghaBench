#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ ip_addr_t ;

/* Variables and functions */
 int DNS_MAX_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* IPSTR ; 
 TYPE_1__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8( lua_State* L ) {
  int numdns = FUNC4(L, 1, 0);
  if (numdns >= DNS_MAX_SERVERS)
    return FUNC3( L, "server index out of range [0-%d]", DNS_MAX_SERVERS - 1);

  // ip_addr_t ipaddr;
  // dns_getserver(numdns,&ipaddr);
  // Bug fix by @md5crypt https://github.com/nodemcu/nodemcu-firmware/pull/500
  ip_addr_t ipaddr = FUNC1(numdns);

  if ( FUNC2(&ipaddr) ) {
    FUNC5( L );
  } else {
    char temp[20] = {0};
    FUNC7(temp, IPSTR, FUNC0( &ipaddr.addr ) );
    FUNC6( L, temp );
  }

  return 1;
}