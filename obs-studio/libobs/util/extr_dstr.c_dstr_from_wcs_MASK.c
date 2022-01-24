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
typedef  int /*<<< orphan*/  wchar_t ;
struct dstr {int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

void FUNC3(struct dstr *dst, const wchar_t *wstr)
{
	size_t len = FUNC2(wstr, 0, NULL, 0, 0);

	if (len) {
		FUNC1(dst, len);
		FUNC2(wstr, 0, dst->array, len + 1, 0);
	} else {
		FUNC0(dst);
	}
}