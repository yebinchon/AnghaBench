#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  stringFileInfo; int /*<<< orphan*/  varFileInfo; struct TYPE_4__* Value; struct TYPE_4__* szKey; } ;
typedef  TYPE_1__ PE_VS_VERSIONINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(PE_VS_VERSIONINFO* vs_VersionInfo) {
	if (vs_VersionInfo) {
		FUNC0 (vs_VersionInfo->szKey);
		FUNC0 (vs_VersionInfo->Value);
		FUNC2 (vs_VersionInfo->varFileInfo);
		FUNC1 (vs_VersionInfo->stringFileInfo);
		FUNC0 (vs_VersionInfo);
	}
}