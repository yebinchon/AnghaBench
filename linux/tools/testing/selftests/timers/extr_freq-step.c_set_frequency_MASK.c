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
struct timex {int modes; int tick; int freq; } ;

/* Variables and functions */
 int ADJ_FREQUENCY ; 
 int ADJ_TICK ; 
 scalar_t__ FUNC0 (struct timex*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int user_hz ; 

__attribute__((used)) static void FUNC3(double freq)
{
	struct timex txc;
	int tick_offset;

	tick_offset = 1e6 * freq / user_hz;

	txc.modes = ADJ_TICK | ADJ_FREQUENCY;
	txc.tick = 1000000 / user_hz + tick_offset;
	txc.freq = (1e6 * freq - user_hz * tick_offset) * (1 << 16);

	if (FUNC0(&txc) < 0) {
		FUNC2("[FAIL] adjtimex");
		FUNC1();
	}
}