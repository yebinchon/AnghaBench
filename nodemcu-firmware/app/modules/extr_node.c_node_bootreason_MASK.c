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
struct rst_info {scalar_t__ reason; scalar_t__ exccause; scalar_t__ epc1; scalar_t__ epc2; scalar_t__ epc3; scalar_t__ excvaddr; scalar_t__ depc; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ REASON_EXCEPTION_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 struct rst_info* FUNC2 () ; 

__attribute__((used)) static int FUNC3 (lua_State *L)
{
  const struct rst_info *ri = FUNC2 ();
  uint32_t arr[8] = {
    FUNC1(),
    ri->reason,
    ri->exccause, ri->epc1, ri->epc2, ri->epc3, ri->excvaddr, ri->depc
  };
  int i, n = ((ri->reason != REASON_EXCEPTION_RST) ? 2 : 8);
  for (i = 0; i < n; ++i)
    FUNC0 (L, arr[i]);
  return n;
}