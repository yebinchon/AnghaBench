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
 int /*<<< orphan*/  FILE_READ_CHUNK ; 
 int /*<<< orphan*/  GET_FILE_OBJ ; 
 int /*<<< orphan*/  fd ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1( lua_State* L )
{
  GET_FILE_OBJ;

  return FUNC0(L, FILE_READ_CHUNK, '\n', fd);
}