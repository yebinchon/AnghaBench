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
struct sockaddr {scalar_t__ sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ CLOCK_TAI ; 
 scalar_t__ PF_INET ; 
 scalar_t__ cfg_clockid ; 
 int /*<<< orphan*/ * cfg_in ; 
 int cfg_num_pkt ; 
 int /*<<< orphan*/ * cfg_out ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  glob_tstart ; 
 int FUNC7 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(struct sockaddr *addr, socklen_t alen)
{
	int fdt, fdr, i;

	FUNC5(stderr, "\nSO_TXTIME ipv%c clock %s\n",
			addr->sa_family == PF_INET ? '4' : '6',
			cfg_clockid == CLOCK_TAI ? "tai" : "monotonic");

	fdt = FUNC8(addr, alen);
	fdr = FUNC7(addr, alen);

	glob_tstart = FUNC6();

	for (i = 0; i < cfg_num_pkt; i++)
		FUNC3(fdt, &cfg_in[i]);
	for (i = 0; i < cfg_num_pkt; i++)
		FUNC1(fdr, &cfg_out[i]);

	FUNC2(fdr);

	if (FUNC0(fdr))
		FUNC4(1, errno, "close r");
	if (FUNC0(fdt))
		FUNC4(1, errno, "close t");
}