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
typedef  scalar_t__ u32_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  ip_addr_t ;

/* Variables and functions */
 int DNS_MAX_SERVERS ; 
 scalar_t__ IPADDR_ANY ; 
 scalar_t__ IPADDR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( lua_State* L ) {
  size_t l;
  u32_t ip32;

  const char *server = FUNC3( L, 1, &l );
  if (l>16 || server == NULL || (ip32 = FUNC2(server)) == IPADDR_NONE || ip32 == IPADDR_ANY)
    return FUNC4( L, "invalid dns server ip" );

  int numdns = FUNC5(L, 2, 0);
  if (numdns >= DNS_MAX_SERVERS)
    return FUNC4( L, "server index out of range [0-%d]", DNS_MAX_SERVERS - 1);

  ip_addr_t ipaddr;
  FUNC1(&ipaddr, ip32);
  FUNC0(numdns,&ipaddr);

  return 0;
}