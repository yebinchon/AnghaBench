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
typedef  int /*<<< orphan*/  CString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(CString *cstr, int c)
{
	if (c == '\'' || c == '\"' || c == '\\') {
		/* XXX: could be more precise if char or string */
		FUNC0 (cstr, '\\');
	}
	if (c >= 32 && c <= 126) {
		FUNC0 (cstr, c);
	} else {
		FUNC0 (cstr, '\\');
		if (c == '\n') {
			FUNC0 (cstr, 'n');
		} else {
			FUNC0 (cstr, '0' + ((c >> 6) & 7));
			FUNC0 (cstr, '0' + ((c >> 3) & 7));
			FUNC0 (cstr, '0' + (c & 7));
		}
	}
}