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
struct update_info {char* etag_remote; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static size_t FUNC3(char *buffer, size_t size, size_t nitems,
			  struct update_info *info)
{
	if (!FUNC2(buffer, "ETag: ", 6)) {
		char *etag = buffer + 6;
		if (*etag) {
			char *etag_clean, *p;

			etag_clean = FUNC0(etag);

			p = FUNC1(etag_clean, '\r');
			if (p)
				*p = 0;

			p = FUNC1(etag_clean, '\n');
			if (p)
				*p = 0;

			info->etag_remote = etag_clean;
		}
	}
	return nitems * size;
}