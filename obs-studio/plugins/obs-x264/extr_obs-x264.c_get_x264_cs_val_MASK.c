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
typedef  enum video_colorspace { ____Placeholder_video_colorspace } video_colorspace ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const* const,char const*) ; 

__attribute__((used)) static inline int FUNC2(enum video_colorspace cs,
				  const char *const names[])
{
	const char *name = FUNC0(cs);
	int idx = 0;
	do {
		if (FUNC1(names[idx], name) == 0)
			return idx;
	} while (!!names[++idx]);

	return 0;
}