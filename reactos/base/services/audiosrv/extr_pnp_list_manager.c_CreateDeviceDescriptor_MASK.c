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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  path; int /*<<< orphan*/  enabled; } ;
typedef  TYPE_1__ VOID ;
typedef  TYPE_1__ PnP_AudioDevice ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

VOID*
FUNC4(WCHAR* path, BOOL is_enabled)
{
    PnP_AudioDevice* device;

    int path_length = FUNC0(path);
    int size = sizeof(PnP_AudioDevice) + path_length;

/*    printf("path_length %d, total %d\n", path_length, size);*/

    device = FUNC2(size);
    if (! device)
    {
        FUNC1("Failed to create a device descriptor (malloc fail)\n");
        return NULL;
    }

    device->enabled = is_enabled;
    FUNC3(device->path, path, path_length);

    return device;
}