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

/* Variables and functions */
 int /*<<< orphan*/  FUNCTION_ARROWS ; 
 int /*<<< orphan*/  FUNCTION_MOUSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mouse_enabled ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void) {
  /* Make sure to turn off NAS if we're entering function */
  FUNC1(false);

  /* Always turn on the mouse layer so the arrow layer can fall through. */
  FUNC0(true, FUNCTION_MOUSE);
  FUNC0(!mouse_enabled, FUNCTION_ARROWS);
}