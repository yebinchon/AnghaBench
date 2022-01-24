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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU160MHZ ; 
 scalar_t__ CPU80MHZ ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC7(lua_State* L)
{
  // http://www.esp8266.com/viewtopic.php?f=21&t=1369
  uint32_t new_freq = FUNC5(L, 1);
  if (new_freq == CPU160MHZ){
    FUNC2(0x3ff00014, FUNC0(0));
    FUNC4(CPU160MHZ);
  } else {
    FUNC1(0x3ff00014,  FUNC0(0));
    FUNC4(CPU80MHZ);
  }
  new_freq = FUNC3();
  FUNC6(L, new_freq);
  return 1;
}