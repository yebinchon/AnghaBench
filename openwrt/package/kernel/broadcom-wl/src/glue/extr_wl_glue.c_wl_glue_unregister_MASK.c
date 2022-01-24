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
 int ENOSYS ; 
#define  WL_GLUE_BUS_TYPE_BCMA 129 
#define  WL_GLUE_BUS_TYPE_SSB 128 
 int active_bus_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ wl_glue_attached ; 
 int /*<<< orphan*/  wl_glue_bcma_driver ; 
 int /*<<< orphan*/  wl_glue_ssb_driver ; 

int FUNC4(void)
{
	int err;

	if (!wl_glue_attached)
		return -ENOSYS;

	switch (active_bus_type)
	{
#ifdef CONFIG_SSB
	case WL_GLUE_BUS_TYPE_SSB:
		ssb_driver_unregister(&wl_glue_ssb_driver);
		err = 0;
		break;
#endif /* CONFIG_SSB */

#ifdef CONFIG_BCMA
	case WL_GLUE_BUS_TYPE_BCMA:
		bcma_driver_unregister(&wl_glue_bcma_driver);
		err = 0;
		break;
#endif /* CONFIG_BCMA */

	default:
		FUNC1("Not removing glue driver due to unsupported bus\n");
		err = -ENOSYS;
		break;
	}

	if (!err)
	{
		FUNC2("SSB/BCMA glue driver successfully detached\n");
		wl_glue_attached = 0;
	}

	return err;
}