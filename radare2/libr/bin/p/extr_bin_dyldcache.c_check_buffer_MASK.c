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
typedef  scalar_t__ ut8 ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  arch ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static bool FUNC4(RBuffer *buf) {
	if (FUNC2 (buf) < 32) {
		return false;
	}

	ut8 hdr[4];
	ut8 arch[9] = { 0 };
	int rarch = FUNC1 (buf, 9, arch, sizeof (arch) - 1);
	int rhdr = FUNC1 (buf, 0, hdr, sizeof (hdr));
	if (rhdr != sizeof (hdr) || FUNC0 (hdr, "dyld", 4)) {
		return false;
	}
	if (rarch > 0 && arch[0] && !FUNC3 ((const char *)arch, "arm64")) {
		return false;
	}
	return true;
}