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
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static inline void FUNC2(smart_str *buf, char *str, size_t len) /* {{{ */
{
	FUNC1(buf, "s:", 2);
	FUNC0(buf, len);
	FUNC1(buf, ":\"", 2);
	FUNC1(buf, str, len);
	FUNC1(buf, "\";", 2);
}