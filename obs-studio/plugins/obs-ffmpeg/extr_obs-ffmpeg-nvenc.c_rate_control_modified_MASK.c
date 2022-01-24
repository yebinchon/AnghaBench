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
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC6(obs_properties_t *ppts, obs_property_t *p,
				  obs_data_t *settings)
{
	const char *rc = FUNC1(settings, "rate_control");
	bool cqp = FUNC0(rc, "CQP") == 0;
	bool vbr = FUNC0(rc, "VBR") == 0;
	bool lossless = FUNC0(rc, "lossless") == 0;
	size_t count;

	p = FUNC2(ppts, "bitrate");
	FUNC5(p, !cqp && !lossless);
	p = FUNC2(ppts, "max_bitrate");
	FUNC5(p, vbr);
	p = FUNC2(ppts, "cqp");
	FUNC5(p, cqp);

	p = FUNC2(ppts, "preset");
	count = FUNC3(p);

	for (size_t i = 0; i < count; i++) {
		bool compatible = (i == 0 || i == 3);
		FUNC4(p, i, lossless && !compatible);
	}

	return true;
}