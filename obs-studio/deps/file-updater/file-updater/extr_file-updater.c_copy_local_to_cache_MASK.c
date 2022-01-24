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
struct update_info {int /*<<< orphan*/  temp; int /*<<< orphan*/  cache; int /*<<< orphan*/  local; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct update_info *info, const char *file)
{
	char *local_file_path = FUNC1(info->local, file);
	char *cache_file_path = FUNC1(info->cache, file);
	char *temp_file_path = FUNC1(info->temp, file);

	FUNC2(local_file_path, temp_file_path);
	FUNC4(cache_file_path);
	FUNC3(temp_file_path, cache_file_path);

	FUNC0(local_file_path);
	FUNC0(cache_file_path);
	FUNC0(temp_file_path);
}