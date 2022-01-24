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
struct TYPE_4__ {int /*<<< orphan*/ * vol; } ;
typedef  TYPE_1__ volume_type ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( lua_State *L )
{
  volume_type *vol = FUNC1( L, 1, "file.vol" );
  FUNC0( L, vol, 1, "volume expected" );

  FUNC2( L, 0 <= FUNC3( vol->vol ) );

  // invalidate vfs descriptor, it has been free'd anyway
  vol->vol = NULL;
  return 1;
}