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
struct xshm_data {char* server; int use_randr; int use_xinerama; int /*<<< orphan*/  y_org; int /*<<< orphan*/  x_org; int /*<<< orphan*/  cursor; int /*<<< orphan*/  xcb; int /*<<< orphan*/  xshm; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ advanced; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xshm_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xshm_data*) ; 
 scalar_t__ FUNC12 (struct xshm_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct xshm_data *data)
{
	const char *server = (data->advanced && *data->server) ? data->server
							       : NULL;

	data->xcb = FUNC4(server, NULL);
	if (!data->xcb || FUNC5(data->xcb)) {
		FUNC0(LOG_ERROR, "Unable to open X display !");
		goto fail;
	}

	if (!FUNC10(data->xcb))
		goto fail;

	data->use_randr = FUNC3(data->xcb) ? true : false;
	data->use_xinerama = FUNC8(data->xcb) ? true : false;

	if (FUNC12(data) < 0) {
		FUNC0(LOG_ERROR, "failed to update geometry !");
		goto fail;
	}

	data->xshm = FUNC13(data->xcb, data->width, data->height);
	if (!data->xshm) {
		FUNC0(LOG_ERROR, "failed to attach shm !");
		goto fail;
	}

	data->cursor = FUNC6(data->xcb);
	FUNC7(data->cursor, data->x_org, data->y_org);

	FUNC1();

	FUNC11(data);

	FUNC2();

	return;
fail:
	FUNC9(data);
}