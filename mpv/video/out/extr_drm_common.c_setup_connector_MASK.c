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
struct kms {TYPE_1__* connector; int /*<<< orphan*/  card_no; int /*<<< orphan*/  log; } ;
typedef  int /*<<< orphan*/  drmModeRes ;
struct TYPE_5__ {scalar_t__ connection; scalar_t__ count_modes; } ;
typedef  TYPE_1__ drmModeConnector ;

/* Variables and functions */
 scalar_t__ DRM_MODE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct kms*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (struct kms*,int /*<<< orphan*/  const*,char const*) ; 
 TYPE_1__* FUNC3 (struct kms*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static bool FUNC6(struct kms *kms, const drmModeRes *res,
                            const char *connector_name)
{
    drmModeConnector *connector;

    if (connector_name
    && FUNC5(connector_name, "")
    && FUNC5(connector_name, "auto")) {
        connector = FUNC2(kms, res, connector_name);
        if (!connector) {
            FUNC0(kms, "No connector with name %s found\n", connector_name);
            FUNC4(kms->log, kms->card_no);
            return false;
        }
    } else {
        connector = FUNC3(kms, res);
        if (!connector) {
            FUNC0(kms, "No connected connectors found\n");
            return false;
        }
    }

    if (connector->connection != DRM_MODE_CONNECTED) {
        FUNC1(connector);
        FUNC0(kms, "Chosen connector is disconnected\n");
        return false;
    }

    if (connector->count_modes == 0) {
        FUNC1(connector);
        FUNC0(kms, "Chosen connector has no valid modes\n");
        return false;
    }

    kms->connector = connector;
    return true;
}