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
typedef  int /*<<< orphan*/  REgg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC1(REgg *egg, char *str, const char *ctxpush, const char *label) {
	FUNC0 (str, "  push {%s}\n  b %s\n", ctxpush, label);
}