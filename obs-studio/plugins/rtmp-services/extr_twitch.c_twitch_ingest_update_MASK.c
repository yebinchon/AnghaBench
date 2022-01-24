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
struct file_download_data {TYPE_1__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  ingests_loaded ; 
 int /*<<< orphan*/  ingests_refreshed ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(void *param, struct file_download_data *data)
{
	bool success;

	FUNC3(&mutex);
	success = FUNC1((const char *)data->buffer.array, true);
	FUNC4(&mutex);

	if (success) {
		FUNC2(&ingests_refreshed, true);
		FUNC2(&ingests_loaded, true);
	}

	FUNC0(param);
	return true;
}