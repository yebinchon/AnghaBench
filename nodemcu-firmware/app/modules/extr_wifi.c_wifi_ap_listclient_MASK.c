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
struct station_info {int /*<<< orphan*/  ip; int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPSTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* MACSTR ; 
 struct station_info* FUNC2 (struct station_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ STATION_MODE ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct station_info* FUNC9 () ; 

__attribute__((used)) static int FUNC10( lua_State* L )
{
  if (FUNC7() == STATION_MODE)
  {
    return FUNC3( L, "Can't list clients in STATION mode" );
  }

  char temp[64];

  FUNC4(L);

  struct station_info * station = FUNC9();
  struct station_info * next_station;
  while (station != NULL)
  {
    FUNC5(temp, MACSTR, FUNC1(station->bssid));
    FUNC6(L, temp, IPSTR, FUNC0(&station->ip));
    station = FUNC2(station, next);
  }
  FUNC8();

  return 1;
}