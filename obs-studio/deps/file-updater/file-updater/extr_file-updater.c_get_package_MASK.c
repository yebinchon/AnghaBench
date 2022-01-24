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
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

__attribute__((used)) static inline obs_data_t *FUNC3(const char *base_path, const char *file)
{
	char *full_path = FUNC1(base_path, file);
	obs_data_t *package = FUNC2(full_path);
	FUNC0(full_path);
	return package;
}