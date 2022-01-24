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
typedef  size_t ut32 ;
struct TYPE_5__ {size_t numOfChildren; struct TYPE_5__* Children; struct TYPE_5__* szKey; } ;
typedef  TYPE_1__ StringFileInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 

__attribute__((used)) static void FUNC2(StringFileInfo* stringFileInfo) {
	if (stringFileInfo) {
		FUNC0 (stringFileInfo->szKey);
		if (stringFileInfo->Children) {
			ut32 childrenSFI = 0;
			for (; childrenSFI < stringFileInfo->numOfChildren; childrenSFI++) {
				FUNC1 (stringFileInfo->Children[childrenSFI]);
			}
			FUNC0 (stringFileInfo->Children);
		}
		FUNC0 (stringFileInfo);
	}
}