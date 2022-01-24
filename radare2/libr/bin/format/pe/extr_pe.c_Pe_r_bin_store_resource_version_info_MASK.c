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
struct TYPE_3__ {scalar_t__ stringFileInfo; scalar_t__ varFileInfo; scalar_t__ Value; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_1__ PE_VS_VERSIONINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Sdb* FUNC5(PE_VS_VERSIONINFO* vs_VersionInfo) {
	Sdb* sdb = NULL;
	if (!vs_VersionInfo) {
		return NULL;
	}
	sdb = FUNC3 ();
	if (!sdb) {
		return NULL;
	}
	if (vs_VersionInfo->Value) {
		FUNC4 (sdb, "fixed_file_info", FUNC0 (vs_VersionInfo->Value));
	}
	if (vs_VersionInfo->varFileInfo) {
		FUNC4 (sdb, "var_file_info", FUNC2 (vs_VersionInfo->varFileInfo));
	}
	if (vs_VersionInfo->stringFileInfo) {
		FUNC4 (sdb, "string_file_info", FUNC1 (vs_VersionInfo->stringFileInfo));
	}
	return sdb;
}