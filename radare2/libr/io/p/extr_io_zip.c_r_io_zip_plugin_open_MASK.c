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
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static bool FUNC2(RIO *io, const char *file, bool many) {
	if (io && file) {
		if (many) {
			return FUNC1 (file);
		}
		return FUNC0 (file);
	}
	return false;
}