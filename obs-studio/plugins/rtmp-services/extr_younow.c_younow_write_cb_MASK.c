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
struct younow_mem_struct {size_t size; scalar_t__* memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,void*,size_t) ; 
 scalar_t__* FUNC2 (scalar_t__*,size_t) ; 

__attribute__((used)) static size_t FUNC3(void *contents, size_t size, size_t nmemb,
			      void *userp)
{
	size_t realsize = size * nmemb;
	struct younow_mem_struct *mem = (struct younow_mem_struct *)userp;

	mem->memory = FUNC2(mem->memory, mem->size + realsize + 1);
	if (mem->memory == NULL) {
		FUNC0(LOG_WARNING, "yyounow_write_cb: realloc returned NULL");
		return 0;
	}

	FUNC1(&(mem->memory[mem->size]), contents, realsize);
	mem->size += realsize;
	mem->memory[mem->size] = 0;

	return realsize;
}