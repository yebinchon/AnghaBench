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
struct CharacterMatrix {int dirty; int /*<<< orphan*/  display; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct CharacterMatrix *dest,
                   const struct CharacterMatrix *source) {
  if (FUNC0(dest->display, source->display, sizeof(dest->display))) {
    FUNC1(dest->display, source->display, sizeof(dest->display));
    dest->dirty = true;
  }
}