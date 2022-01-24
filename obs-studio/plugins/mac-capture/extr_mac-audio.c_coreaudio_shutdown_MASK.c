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
struct coreaudio_data {scalar_t__ unit; int /*<<< orphan*/  exit_event; int /*<<< orphan*/  reconnect_thread; scalar_t__ reconnecting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct coreaudio_data *ca)
{
	if (ca->reconnecting) {
		FUNC3(ca->exit_event);
		FUNC4(ca->reconnect_thread, NULL);
		FUNC2(ca->exit_event);
	}

	FUNC1(ca);

	if (ca->unit)
		FUNC0(ca->unit);
}