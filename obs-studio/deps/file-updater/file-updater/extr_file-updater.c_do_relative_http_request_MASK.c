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
struct update_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct update_info*,char*,long*) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static inline bool FUNC3(struct update_info *info,
					    const char *url, const char *file)
{
	long response_code;
	char *full_url = FUNC2(url, file);
	bool success = FUNC1(info, full_url, &response_code);
	FUNC0(full_url);
	return success && response_code == 200;
}