#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {void* addr; } ;
typedef  TYPE_1__ ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 void* FUNC3 (char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8( lua_State *L, int join) {
	  size_t il;
	  ip_addr_t multicast_addr;
	  ip_addr_t if_addr;
	  const char *multicast_ip;
	  const char *if_ip;

	  FUNC0("net_multicastJoin is called.\n");
	  if(! FUNC6(L,1) ) return FUNC5( L, "wrong arg type" );
	  if_ip = FUNC4( L, 1, &il );
	  if (if_ip != NULL)
		 if ( if_ip[0] == '\0' || FUNC7(if_ip,"any") == 0)
	     {
			 if_ip = "0.0.0.0";
			 il = 7;
	     }
	  if (if_ip == NULL || il > 15 || il < 7) return FUNC5( L, "invalid if ip" );
	  if_addr.addr = FUNC3(if_ip);

	  if(! FUNC6(L,2) ) return FUNC5( L, "wrong arg type" );
	  multicast_ip = FUNC4( L, 2, &il );
	  if (multicast_ip == NULL || il > 15 || il < 7) return FUNC5( L, "invalid multicast ip" );
	  multicast_addr.addr = FUNC3(multicast_ip);
	  if (join)
	  {
		  FUNC1(&if_addr, &multicast_addr);
	  }
	  else
	  {
		  FUNC2(&if_addr, &multicast_addr);
	  }
	  return 0;
}