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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mac ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_MAC_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,unsigned int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( lua_State* L )
{
  uint8_t mac[6];
  unsigned len = 0;
  if(FUNC3(L, 1))
  {
    const char *macaddr = FUNC2( L, 1, &len );
    FUNC1(L, len==17, 1, INVALID_MAC_STR);
    FUNC0(mac, macaddr);
  }
  else
  {
    FUNC5(&mac, 0xFF, sizeof(mac));
  }
  FUNC4(L,FUNC6(mac));
  return 1;
}