#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* json; } ;
typedef  TYPE_1__ obs_data_t ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int JSON_PRESERVE_ORDER ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 

const char *FUNC5(obs_data_t *data)
{
	if (!data)
		return NULL;

	/* NOTE: don't use libobs bfree for json text */
	FUNC1(data->json);
	data->json = NULL;

	json_t *root = FUNC4(data);
	data->json = FUNC3(root, JSON_PRESERVE_ORDER | FUNC0(4));
	FUNC2(root);

	return data->json;
}