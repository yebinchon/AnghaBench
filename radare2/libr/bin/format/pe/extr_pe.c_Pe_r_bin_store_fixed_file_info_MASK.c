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
struct TYPE_3__ {int /*<<< orphan*/  dwFileDateLS; int /*<<< orphan*/  dwFileDateMS; int /*<<< orphan*/  dwFileSubtype; int /*<<< orphan*/  dwFileType; int /*<<< orphan*/  dwFileOS; int /*<<< orphan*/  dwFileFlags; int /*<<< orphan*/  dwFileFlagsMask; int /*<<< orphan*/  dwProductVersionLS; int /*<<< orphan*/  dwProductVersionMS; int /*<<< orphan*/  dwFileVersionLS; int /*<<< orphan*/  dwFileVersionMS; int /*<<< orphan*/  dwStrucVersion; int /*<<< orphan*/  dwSignature; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_1__ PE_VS_FIXEDFILEINFO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Sdb* FUNC2(PE_VS_FIXEDFILEINFO* vs_fixedFileInfo) {
	Sdb* sdb = NULL;
	if (!vs_fixedFileInfo) {
		return NULL;
	}
	sdb = FUNC0 ();
	if (!sdb) {
		return NULL;
	}
	FUNC1 (sdb, "Signature",        vs_fixedFileInfo->dwSignature,        0);
	FUNC1 (sdb, "StrucVersion",     vs_fixedFileInfo->dwStrucVersion,     0);
	FUNC1 (sdb, "FileVersionMS",    vs_fixedFileInfo->dwFileVersionMS,    0);
	FUNC1 (sdb, "FileVersionLS",    vs_fixedFileInfo->dwFileVersionLS,    0);
	FUNC1 (sdb, "ProductVersionMS", vs_fixedFileInfo->dwProductVersionMS, 0);
	FUNC1 (sdb, "ProductVersionLS", vs_fixedFileInfo->dwProductVersionLS, 0);
	FUNC1 (sdb, "FileFlagsMask",    vs_fixedFileInfo->dwFileFlagsMask,    0);
	FUNC1 (sdb, "FileFlags",        vs_fixedFileInfo->dwFileFlags,        0);
	FUNC1 (sdb, "FileOS",           vs_fixedFileInfo->dwFileOS,           0);
	FUNC1 (sdb, "FileType",         vs_fixedFileInfo->dwFileType,         0);
	FUNC1 (sdb, "FileSubtype",      vs_fixedFileInfo->dwFileSubtype,      0);
	FUNC1 (sdb, "FileDateMS",       vs_fixedFileInfo->dwFileDateMS,       0);
	FUNC1 (sdb, "FileDateLS",       vs_fixedFileInfo->dwFileDateLS,       0);
	return sdb;
}