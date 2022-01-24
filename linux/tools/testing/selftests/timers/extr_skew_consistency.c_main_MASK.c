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
struct timex {int freq; scalar_t__ offset; void* modes; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 void* ADJ_FREQUENCY ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC0 (struct timex*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int FUNC8(int argv, char **argc)
{
	struct timex tx;
	int ret, ppm;
	pid_t pid;


	FUNC4("Running Asynchronous Frequency Changing Tests...\n");

	pid = FUNC1();
	if (!pid)
		return FUNC5("./inconsistency-check -c 1 -t 600");

	ppm = 500;
	ret = 0;

	while (pid != FUNC7(pid, &ret, WNOHANG)) {
		ppm = -ppm;
		tx.modes = ADJ_FREQUENCY;
		tx.freq = ppm << 16;
		FUNC0(&tx);
		FUNC6(500000);
	}

	/* Set things back */
	tx.modes = ADJ_FREQUENCY;
	tx.offset = 0;
	FUNC0(&tx);


	if (ret) {
		FUNC4("[FAILED]\n");
		return FUNC2();
	}
	FUNC4("[OK]\n");
	return FUNC3();
}