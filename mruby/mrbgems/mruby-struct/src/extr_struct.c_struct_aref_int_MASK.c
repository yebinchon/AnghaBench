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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_INDEX_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static mrb_value
FUNC3(mrb_state *mrb, mrb_value s, mrb_int i)
{
  mrb_int idx = i < 0 ? FUNC0(s) + i : i;

  if (idx < 0)
    FUNC2(mrb, E_INDEX_ERROR,
               "offset %i too small for struct(size:%i)", i, FUNC0(s));
  if (FUNC0(s) <= idx)
    FUNC2(mrb, E_INDEX_ERROR,
               "offset %i too large for struct(size:%i)", i, FUNC0(s));
  return FUNC1(s)[idx];
}