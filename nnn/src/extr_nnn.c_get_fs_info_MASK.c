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
struct statvfs {size_t f_blocks; int f_bsize; size_t f_bavail; int f_frsize; } ;

/* Variables and functions */
 int CAPACITY ; 
 size_t FUNC0 (int) ; 
 int FUNC1 (char const*,struct statvfs*) ; 

__attribute__((used)) static size_t FUNC2(const char *path, bool type)
{
	struct statvfs svb;

	if (FUNC1(path, &svb) == -1)
		return 0;

	if (type == CAPACITY)
		return svb.f_blocks << FUNC0((int)(svb.f_bsize >> 1));

	return svb.f_bavail << FUNC0((int)(svb.f_frsize >> 1));
}