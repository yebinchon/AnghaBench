#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ RMagic ;

/* Variables and functions */
 int ELOOP ; 
 int R_MAGIC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char const*,char*) ; 
 int FUNC1 (TYPE_1__*,char const*,char*) ; 

__attribute__((used)) static int FUNC2(RMagic *ms, int err, char *buf) {
#ifdef ELOOP
	const char *errfmt = (err == ELOOP)?
		"symbolic link in a loop":
		"broken symbolic link to `%s'";
#else
	const char *errfmt = "broken symbolic link to `%s'";
#endif
	if (ms->flags & R_MAGIC_ERROR) {
		FUNC0 (ms, err, errfmt, buf);
		return -1;
	} 
	if (FUNC1 (ms, errfmt, buf) == -1)
		return -1;
	return 1;
}