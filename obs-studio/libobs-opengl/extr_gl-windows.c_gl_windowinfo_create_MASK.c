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
struct gl_windowinfo {int /*<<< orphan*/  hdc; } ;
typedef  int /*<<< orphan*/  PIXELFORMATDESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gs_init_data const*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct gl_windowinfo* FUNC3 (struct gs_init_data const*) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_windowinfo*) ; 

struct gl_windowinfo *FUNC5(const struct gs_init_data *info)
{
	struct gl_windowinfo *wi = FUNC3(info);
	PIXELFORMATDESCRIPTOR pfd;
	int pixel_format;

	if (!wi)
		return NULL;

	if (!FUNC1(wi->hdc, info, &pixel_format, &pfd))
		goto fail;
	if (!FUNC2(wi->hdc, pixel_format, &pfd))
		goto fail;

	return wi;

fail:
	FUNC0(LOG_ERROR, "gl_windowinfo_create failed");
	FUNC4(wi);
	return NULL;
}