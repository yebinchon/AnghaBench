#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct class {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_3__ {int /*<<< orphan*/ * function; } ;

/* Variables and functions */
 int BSP_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int DSL_BSP_CB_LAST ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  MEI_MAJOR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_2__ bsp_mei_version ; 
 struct class* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct class*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* dsl_bsp_event_callback ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int i = 0;
	static struct class *dsl_class;

	FUNC8("IFX MEI Version %ld.%02ld.%02ld\n", bsp_mei_version.major, bsp_mei_version.minor, bsp_mei_version.revision);

	for (i = 0; i < BSP_MAX_DEVICES; i++) {
		if (FUNC4 (i) != 0) {
			FUNC2("Init device fail!\n");
			return -EIO;
		}
		FUNC3 (i);
	}
		for (i = 0; i <= DSL_BSP_CB_LAST ; i++)
		dsl_bsp_event_callback[i].function = NULL;

#ifdef CONFIG_LTQ_MEI_FW_LOOPBACK
	IFX_MEI_DMSG("Start loopback test...\n");
	DFE_Loopback_Test ();
#endif
	dsl_class = FUNC6(THIS_MODULE, "ifx_mei");
	FUNC7(dsl_class, NULL, FUNC5(MEI_MAJOR, 0), NULL, "ifx_mei");
	return 0;
}