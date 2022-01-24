#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_5__ {scalar_t__ connection; } ;
typedef  TYPE_1__ drmModeConnector ;

/* Variables and functions */
 scalar_t__ DRM_MODE_CONNECTED ; 
 int MAX_CONNECTOR_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct mp_log *log, int card_no,
                                              const drmModeConnector *connector)
{
    if (connector->connection != DRM_MODE_CONNECTED)
        return;

    char other_connector_name[MAX_CONNECTOR_NAME_LEN];
    FUNC0(connector, other_connector_name);
    FUNC2(log, "Available modes for drm-connector=%d.%s\n",
            card_no, other_connector_name);
    FUNC1(log, connector);
    FUNC2(log, "\n");
}