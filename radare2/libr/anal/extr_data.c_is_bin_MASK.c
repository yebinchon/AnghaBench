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
typedef  int /*<<< orphan*/  ut8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*,int) ; 

__attribute__((used)) static bool FUNC1(const ut8 *buf, int size) {
	// TODO: add more magic signatures heres
	if ((size >= 4 && !FUNC0 (buf, "\xcf\xfa\xed\xfe", 4))) {
		return true;
	}
	if ((size >= 4 && !FUNC0 (buf, "\x7f\x45\x4c\x46", 4))) { // \x7fELF
		return true;
	}
	if ((size >= 2 && !FUNC0 (buf, "MZ", 2))) {
		return true;
	}
	return false;
}