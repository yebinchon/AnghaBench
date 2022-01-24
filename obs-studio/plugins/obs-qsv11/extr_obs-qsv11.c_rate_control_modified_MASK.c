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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC4(obs_properties_t *ppts, obs_property_t *p,
				  obs_data_t *settings)
{
	const char *rate_control =
		FUNC1(settings, "rate_control");

	bool bVisible = FUNC0(rate_control, "VCM") == 0 ||
			FUNC0(rate_control, "VBR") == 0;
	p = FUNC2(ppts, "max_bitrate");
	FUNC3(p, bVisible);

	bVisible = FUNC0(rate_control, "CQP") == 0 ||
		   FUNC0(rate_control, "LA_ICQ") == 0 ||
		   FUNC0(rate_control, "ICQ") == 0;
	p = FUNC2(ppts, "bitrate");
	FUNC3(p, !bVisible);

	bVisible = FUNC0(rate_control, "AVBR") == 0;
	p = FUNC2(ppts, "accuracy");
	FUNC3(p, bVisible);
	p = FUNC2(ppts, "convergence");
	FUNC3(p, bVisible);

	bVisible = FUNC0(rate_control, "CQP") == 0;
	p = FUNC2(ppts, "qpi");
	FUNC3(p, bVisible);
	p = FUNC2(ppts, "qpb");
	FUNC3(p, bVisible);
	p = FUNC2(ppts, "qpp");
	FUNC3(p, bVisible);

	bVisible = FUNC0(rate_control, "ICQ") == 0 ||
		   FUNC0(rate_control, "LA_ICQ") == 0;
	p = FUNC2(ppts, "icq_quality");
	FUNC3(p, bVisible);

	bVisible = FUNC0(rate_control, "LA_ICQ") == 0 ||
		   FUNC0(rate_control, "LA_CBR") == 0 ||
		   FUNC0(rate_control, "LA_VBR") == 0;
	p = FUNC2(ppts, "la_depth");
	FUNC3(p, bVisible);

	bVisible = FUNC0(rate_control, "CBR") == 0 ||
		   FUNC0(rate_control, "VBR") == 0 ||
		   FUNC0(rate_control, "AVBR") == 0;
	p = FUNC2(ppts, "mbbrc");
	FUNC3(p, bVisible);

	return true;
}