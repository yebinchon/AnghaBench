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
 int /*<<< orphan*/  B1 ; 
 int /*<<< orphan*/  B2 ; 
 int /*<<< orphan*/  B3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void) {
  // set CapsLock LED to output and low
  FUNC0(B1);
  FUNC1(B1);
  // set NumLock LED to output and low
  FUNC0(B2);
  FUNC1(B2);
  // set ScrollLock LED to output and low
  FUNC0(B3);
  FUNC1(B3);
}