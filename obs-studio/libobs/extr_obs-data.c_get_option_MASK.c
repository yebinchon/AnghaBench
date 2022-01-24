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
struct obs_data_item {int dummy; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 struct obs_data_item* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_data_item**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC4(obs_data_t *data, const char **option)
{
	if (!option)
		return false;

	struct obs_data_item *opt = FUNC0(data, "option");
	if (!opt)
		return false;

	*option = FUNC1(opt);
	FUNC2(&opt);

	FUNC3(data);

	return true;
}