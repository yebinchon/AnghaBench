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
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static bool FUNC1(const char *ext)
{
	if (!ext)
		return false;
	return FUNC0(ext, ".bmp") == 0 || FUNC0(ext, ".tga") == 0 ||
	       FUNC0(ext, ".png") == 0 || FUNC0(ext, ".jpeg") == 0 ||
	       FUNC0(ext, ".jpg") == 0 || FUNC0(ext, ".gif") == 0;
}