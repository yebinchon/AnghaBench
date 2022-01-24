#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kms {int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {int count_connectors; int /*<<< orphan*/ * connectors; } ;
typedef  TYPE_1__ drmModeRes ;
typedef  int /*<<< orphan*/  drmModeConnector ;

/* Variables and functions */
 int MAX_CONNECTOR_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static drmModeConnector *FUNC4(const struct kms *kms,
                                               const drmModeRes *res,
                                               const char *connector_name)
{
    for (int i = 0; i < res->count_connectors; i++) {
        drmModeConnector *connector
            = FUNC1(kms->fd, res->connectors[i]);
        if (!connector)
            continue;
        char other_connector_name[MAX_CONNECTOR_NAME_LEN];
        FUNC2(connector, other_connector_name);
        if (!FUNC3(connector_name, other_connector_name))
            return connector;
        FUNC0(connector);
    }
    return NULL;
}