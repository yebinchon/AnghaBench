#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* default_source_name; char* default_sink_name; int /*<<< orphan*/  server_version; int /*<<< orphan*/  server_name; } ;
typedef  TYPE_1__ pa_server_info ;
typedef  int /*<<< orphan*/  pa_context ;
struct TYPE_5__ {char* device; scalar_t__ input; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 void* FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__) ; 
 TYPE_3__* data ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(pa_context *c, const pa_server_info *i,
			      void *userdata)
{
	FUNC1(c);
	FUNC0(userdata);

	FUNC3(LOG_INFO, "Server name: '%s %s'", i->server_name,
	     i->server_version);

	if (data->device && FUNC8("default", data->device) == 0) {
		if (data->input) {
			FUNC2(data->device);
			data->device = FUNC4(i->default_source_name);

			FUNC3(LOG_DEBUG, "Default input device: '%s'",
			     data->device);
		} else {
			char *monitor =
				FUNC5(FUNC9(i->default_sink_name) + 9);
			FUNC7(monitor, i->default_sink_name);
			FUNC7(monitor, ".monitor");

			FUNC2(data->device);
			data->device = FUNC4(monitor);

			FUNC3(LOG_DEBUG, "Default output device: '%s'",
			     data->device);
			FUNC2(monitor);
		}
	}

	FUNC6(0);
}