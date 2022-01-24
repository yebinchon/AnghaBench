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
typedef  int /*<<< orphan*/  layer_name ;

/* Variables and functions */
#define  L_BASE 130 
#define  _LOWER 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

const char *FUNC4(void) {
  static char layer_state_str[24];
  char layer_name[17];

  switch (FUNC0(layer_state)) {
    case L_BASE:
      FUNC3(layer_name, "Default");
      break;
    case _RAISE:
      FUNC3(layer_name, "Raise");
      break;
    case _LOWER:
      FUNC3(layer_name, "Lower");
      break;
    default:
      FUNC1(layer_name, sizeof(layer_name), "Undef-%ld", layer_state);
  }

  FUNC3(layer_state_str, "Layer: ");

  FUNC2(layer_state_str, layer_name);
  FUNC2(layer_state_str, "\n");
  return layer_state_str;
}