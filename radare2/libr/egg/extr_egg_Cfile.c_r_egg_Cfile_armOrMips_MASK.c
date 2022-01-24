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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static inline bool FUNC1(const char *arch) {
	return (!FUNC0 (arch, "arm") || !FUNC0 (arch, "arm64") || !FUNC0 (arch, "aarch64")
	  	|| !FUNC0 (arch, "thumb") || !FUNC0 (arch, "arm32") || !FUNC0 (arch, "mips")
		|| !FUNC0 (arch, "mips32") || !FUNC0 (arch, "mips64"));
}