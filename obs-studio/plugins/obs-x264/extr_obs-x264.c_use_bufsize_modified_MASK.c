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
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC5(obs_properties_t *ppts, obs_property_t *p,
				 obs_data_t *settings)
{
	bool use_bufsize = FUNC1(settings, "use_bufsize");
	const char *rc = FUNC2(settings, "rate_control");
	bool rc_crf = FUNC0(rc, "CRF") == 0;

	p = FUNC3(ppts, "buffer_size");
	FUNC4(p, use_bufsize && !rc_crf);
	return true;
}