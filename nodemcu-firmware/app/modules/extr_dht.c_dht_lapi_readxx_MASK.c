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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  dht ; 
 double FUNC1 () ; 
 double FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
  unsigned id = FUNC4( L, 1 );
  FUNC0( dht, id );
  FUNC5( L, FUNC3(id) );
  double temp = FUNC2();
  double humi = FUNC1();
  int tempdec = (int)((temp - (int)temp) * 1000);
  int humidec = (int)((humi - (int)humi) * 1000);
  FUNC6( L, temp );
  FUNC6( L, humi );
  FUNC6( L, tempdec );
  FUNC6( L, humidec );
  return 5;
}