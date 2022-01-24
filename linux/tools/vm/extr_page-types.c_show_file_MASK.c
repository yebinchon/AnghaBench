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
struct stat {unsigned long long st_size; long st_atime; long st_mtime; scalar_t__ st_ino; } ;
typedef  int /*<<< orphan*/  mtime ;
typedef  int /*<<< orphan*/  atime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long*) ; 
 unsigned long long page_size ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,long,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char *name, const struct stat *st)
{
	unsigned long long size = st->st_size;
	char atime[64], mtime[64];
	long now = FUNC3(NULL);

	FUNC1("%s\tInode: %u\tSize: %llu (%llu pages)\n",
			name, (unsigned)st->st_ino,
			size, (size + page_size - 1) / page_size);

	FUNC2(atime, sizeof(atime), "%c", FUNC0(&st->st_atime));
	FUNC2(mtime, sizeof(mtime), "%c", FUNC0(&st->st_mtime));

	FUNC1("Modify: %s (%ld seconds ago)\nAccess: %s (%ld seconds ago)\n",
			mtime, now - st->st_mtime,
			atime, now - st->st_atime);
}