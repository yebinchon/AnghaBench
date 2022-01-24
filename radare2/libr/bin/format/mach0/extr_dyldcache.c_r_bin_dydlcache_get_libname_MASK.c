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
struct r_bin_dyldcache_lib_t {char* path; } ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*) ; 

void FUNC2(struct r_bin_dyldcache_lib_t *lib, char **libname) {
	char *cur = lib->path;
	char *res = lib->path;
	int path_length = FUNC1 (lib->path);
	while (cur < cur + path_length - 1) {
		cur = FUNC0 (cur, '/');
		if (!cur) {
			break;
		}
		cur++;
		res = cur;
	}
	*libname = res;
}