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
struct CharacterMatrix {int dummy; } ;

/* Variables and functions */
 scalar_t__ debug_enable ; 
 int /*<<< orphan*/  display ; 
 scalar_t__ is_master ; 
 int /*<<< orphan*/  FUNC0 (struct CharacterMatrix*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct CharacterMatrix*) ; 
 int /*<<< orphan*/  FUNC2 (struct CharacterMatrix*) ; 
 int /*<<< orphan*/  FUNC3 (struct CharacterMatrix*) ; 

void FUNC4(void) {
  struct CharacterMatrix matrix;

#if DEBUG_TO_SCREEN
  if (debug_enable) { return; }
#endif

  FUNC0(&matrix);
  if (is_master) {
    FUNC3(&matrix);
  } else {
    FUNC2(&matrix);
  }
  FUNC1(&display, &matrix);
}