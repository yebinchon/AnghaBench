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
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  RAnalEsil ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static bool FUNC2(RAnalEsil *esil, const char *str, ut64 *num) {
	if (!esil || !str) {
		return false;
	}
	if (FUNC0 (*str)) {
		if (num) {
			*num = FUNC1 (NULL, str);
		}
		return true;
	}
	if (num) {
		*num = 0;
	}
	return false;
}