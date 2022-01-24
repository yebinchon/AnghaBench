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
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

__attribute__((used)) static obs_properties_t *FUNC5(void *unused)
{
	FUNC0(unused);

	obs_properties_t *props = FUNC4();

	FUNC3(props, "bitrate", FUNC1("Bitrate"), 32,
			       1024, 32);
	FUNC2(props, "afterburner",
				FUNC1("Afterburner"));

	return props;
}