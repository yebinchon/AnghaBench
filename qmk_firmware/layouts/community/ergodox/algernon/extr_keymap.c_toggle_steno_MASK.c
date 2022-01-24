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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ PLVR ; 
 int /*<<< orphan*/  PV_LH ; 
 int /*<<< orphan*/  PV_LP ; 
 int /*<<< orphan*/  PV_LR ; 
 int /*<<< orphan*/  PV_O ; 
 int /*<<< orphan*/  PV_RG ; 
 int /*<<< orphan*/  PV_RL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int pressed)
{
  uint8_t layer = FUNC0(layer_state);

  if (pressed) {
    if (layer != PLVR) FUNC2(PLVR); else FUNC1(PLVR);

    FUNC3(PV_LP);
    FUNC3(PV_LH);
    FUNC3(PV_LR);
    FUNC3(PV_O);
    FUNC3(PV_RL);
    FUNC3(PV_RG);
  } else {
    FUNC4(PV_LP);
    FUNC4(PV_LH);
    FUNC4(PV_LR);
    FUNC4(PV_O);
    FUNC4(PV_RL);
    FUNC4(PV_RG);
  }
}