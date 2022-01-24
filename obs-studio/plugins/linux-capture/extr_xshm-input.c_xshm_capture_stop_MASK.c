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
struct xshm_data {int /*<<< orphan*/ * server; int /*<<< orphan*/ * xcb; int /*<<< orphan*/ * xshm; int /*<<< orphan*/ * cursor; int /*<<< orphan*/ * texture; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct xshm_data *data)
{
	FUNC2();

	if (data->texture) {
		FUNC1(data->texture);
		data->texture = NULL;
	}
	if (data->cursor) {
		FUNC5(data->cursor);
		data->cursor = NULL;
	}

	FUNC3();

	if (data->xshm) {
		FUNC6(data->xshm);
		data->xshm = NULL;
	}

	if (data->xcb) {
		FUNC4(data->xcb);
		data->xcb = NULL;
	}

	if (data->server) {
		FUNC0(data->server);
		data->server = NULL;
	}
}