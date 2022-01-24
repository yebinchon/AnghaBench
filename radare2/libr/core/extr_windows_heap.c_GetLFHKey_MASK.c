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
typedef  scalar_t__ WPARAM ;
typedef  int /*<<< orphan*/  RDebug ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ RtlpHpHeapGlobalsOffset ; 
 scalar_t__ RtlpLFHKeyOffset ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static bool FUNC5(RDebug *dbg, HANDLE h_proc, bool segment, WPARAM *lfhKey) {
	FUNC3 (dbg, 0);
	WPARAM lfhKeyLocation;

	if (!FUNC0 (dbg, h_proc)) {
		*lfhKey = 0;
		return false;
	}

	if (segment) {
		lfhKeyLocation = RtlpHpHeapGlobalsOffset + sizeof (WPARAM);
	} else {
		lfhKeyLocation = RtlpLFHKeyOffset; // ntdll!RtlpLFHKey
	}
	if (!FUNC1 (h_proc, (PVOID)lfhKeyLocation, lfhKey, sizeof (WPARAM), NULL)) {
		FUNC4 ("ReadProcessMemory");
		FUNC2 ("LFH key not found.\n");
		*lfhKey = 0;
		return false;
	}
	return true;
}