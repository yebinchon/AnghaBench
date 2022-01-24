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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static inline void FUNC4(const char *src_base_path,
				const char *dst_base_path, const char *file)
{
	char *src_path = FUNC1(src_base_path, file);
	char *dst_path = FUNC1(dst_base_path, file);

	if (src_path && dst_path) {
		FUNC3(dst_path);
		FUNC2(src_path, dst_path);
	}

	FUNC0(dst_path);
	FUNC0(src_path);
}