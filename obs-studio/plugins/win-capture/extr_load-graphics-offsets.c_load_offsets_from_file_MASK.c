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
struct graphics_offsets {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct graphics_offsets*,char*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static inline bool FUNC3(struct graphics_offsets *offsets,
					  const char *file)
{
	char *str = FUNC2(file);
	bool success = false;
	if (str && *str)
		success = FUNC1(offsets, str);
	FUNC0(str);
	return success;
}