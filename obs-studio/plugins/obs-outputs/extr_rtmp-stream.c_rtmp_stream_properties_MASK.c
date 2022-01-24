#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netif_saddr_item {char* addr; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {size_t num; struct netif_saddr_item* array; } ;
struct netif_saddr_data {TYPE_1__ addrs; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  OPT_BIND_IP ; 
 int /*<<< orphan*/  OPT_DROP_THRESHOLD ; 
 int /*<<< orphan*/  OPT_LOWLATENCY_ENABLED ; 
 int /*<<< orphan*/  OPT_NEWSOCKETLOOP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct netif_saddr_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct netif_saddr_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static obs_properties_t *FUNC9(void *unused)
{
	FUNC0(unused);

	obs_properties_t *props = FUNC7();
	struct netif_saddr_data addrs = {0};
	obs_property_t *p;

	FUNC5(props, OPT_DROP_THRESHOLD,
			       FUNC3("RTMPStream.DropThreshold"), 200,
			       10000, 100);

	p = FUNC6(props, OPT_BIND_IP,
				    FUNC3("RTMPStream.BindIP"),
				    OBS_COMBO_TYPE_LIST,
				    OBS_COMBO_FORMAT_STRING);

	FUNC8(p, FUNC3("Default"), "default");

	FUNC1(&addrs);
	for (size_t i = 0; i < addrs.addrs.num; i++) {
		struct netif_saddr_item item = addrs.addrs.array[i];
		FUNC8(p, item.name, item.addr);
	}
	FUNC2(&addrs);

	FUNC4(props, OPT_NEWSOCKETLOOP_ENABLED,
				FUNC3("RTMPStream.NewSocketLoop"));
	FUNC4(props, OPT_LOWLATENCY_ENABLED,
				FUNC3("RTMPStream.LowLatencyMode"));

	return props;
}