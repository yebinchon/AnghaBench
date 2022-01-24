#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ array; } ;
struct file_download_data {TYPE_1__ buffer; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int RTMP_SERVICES_FORMAT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(void *param, struct file_download_data *file)
{
	if (FUNC1(file->name, "services.json") == 0) {
		obs_data_t *data;
		int format_version;

		data = FUNC2((char *)file->buffer.array);
		if (!data)
			return false;

		format_version = (int)FUNC3(data, "format_version");
		FUNC4(data);

		if (format_version != RTMP_SERVICES_FORMAT_VERSION)
			return false;
	}

	FUNC0(param);
	return true;
}