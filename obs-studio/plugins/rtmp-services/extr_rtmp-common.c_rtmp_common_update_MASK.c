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
struct rtmp_common {int /*<<< orphan*/ * output; int /*<<< orphan*/ * service; int /*<<< orphan*/ * key; int /*<<< orphan*/ * server; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtmp_common*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 

__attribute__((used)) static void FUNC10(void *data, obs_data_t *settings)
{
	struct rtmp_common *service = data;

	FUNC0(service->service);
	FUNC0(service->server);
	FUNC0(service->output);
	FUNC0(service->key);

	service->service = FUNC1(FUNC8(settings, "service"));
	service->server = FUNC1(FUNC8(settings, "server"));
	service->key = FUNC1(FUNC8(settings, "key"));
	service->output = NULL;

	json_t *root = FUNC9();
	if (root) {
		const char *new_name;
		json_t *serv = FUNC3(root, service->service, &new_name);

		if (new_name) {
			FUNC0(service->service);
			service->service = FUNC1(new_name);
		}

		if (serv) {
			json_t *rec = FUNC7(serv, "recommended");
			if (FUNC6(rec)) {
				const char *out = FUNC4(rec, "output");
				if (out)
					service->output = FUNC1(out);
			}

			FUNC2(service, serv, settings);
		}
	}
	FUNC5(root);

	if (!service->output)
		service->output = FUNC1("rtmp_output");
}