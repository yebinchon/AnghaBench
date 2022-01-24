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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PCONFIGURATION_COMPONENT_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 

PCONFIGURATION_COMPONENT_DATA FUNC3() {
    PCONFIGURATION_COMPONENT_DATA RootKey;
    ULONG BusNumber = 0, DiskController = 0, DiskNumber = 0;
    int node = FUNC2("/");

    FUNC0(&RootKey);

    FUNC1(RootKey,"/",node,&BusNumber,&DiskController,&DiskNumber);
    return RootKey;
}