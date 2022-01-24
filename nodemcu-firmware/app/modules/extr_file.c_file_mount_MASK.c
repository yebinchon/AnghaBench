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
struct TYPE_2__ {int /*<<< orphan*/  vol; } ;
typedef  TYPE_1__ volume_type ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
  const char *ldrv = FUNC0( L, 1 );
  int num = FUNC2( L, 2, -1 );
  volume_type *vol = (volume_type *)FUNC3( L, sizeof( volume_type ) );

  if ((vol->vol = FUNC6( ldrv, num ))) {
    /* set its metatable */
    FUNC1(L, "file.vol");
    FUNC5(L, -2);
    return 1;
  } else {
    // remove created userdata
    FUNC4( L, 1 );
    return 0;
  }
}