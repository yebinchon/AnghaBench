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

/* Variables and functions */
 int /*<<< orphan*/  OBS_TEXT_DEFAULT ; 
 int /*<<< orphan*/  OBS_TEXT_PASSWORD ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_auth_modified ; 

__attribute__((used)) static obs_properties_t *FUNC6(void *unused)
{
	FUNC0(unused);

	obs_properties_t *ppts = FUNC4();
	obs_property_t *p;

	FUNC3(ppts, "server", "URL", OBS_TEXT_DEFAULT);

	FUNC3(ppts, "key", FUNC1("StreamKey"),
				OBS_TEXT_PASSWORD);

	p = FUNC2(ppts, "use_auth",
				    FUNC1("UseAuth"));
	FUNC3(ppts, "username", FUNC1("Username"),
				OBS_TEXT_DEFAULT);
	FUNC3(ppts, "password", FUNC1("Password"),
				OBS_TEXT_PASSWORD);
	FUNC5(p, use_auth_modified);
	return ppts;
}