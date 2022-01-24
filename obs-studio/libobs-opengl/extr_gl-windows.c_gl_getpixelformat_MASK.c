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
struct gs_init_data {int dummy; } ;
typedef  int /*<<< orphan*/  PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct gs_init_data const*) ; 

__attribute__((used)) static inline bool FUNC4(HDC hdc, const struct gs_init_data *info,
				     int *format, PIXELFORMATDESCRIPTOR *pfd)
{
	if (!format)
		return false;

	*format = FUNC3(hdc, info);

	if (!FUNC0(hdc, *format, sizeof(*pfd), pfd)) {
		FUNC2(LOG_ERROR, "DescribePixelFormat failed, %lu",
		     FUNC1());
		return false;
	}

	return true;
}