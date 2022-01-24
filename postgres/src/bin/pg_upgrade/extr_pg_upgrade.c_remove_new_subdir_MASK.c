#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  new_path ;
struct TYPE_2__ {char* pgdata; } ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ new_cluster ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static void
FUNC5(const char *subdir, bool rmtopdir)
{
	char		new_path[MAXPGPATH];

	FUNC2("Deleting files from new %s", subdir);

	FUNC4(new_path, sizeof(new_path), "%s/%s", new_cluster.pgdata, subdir);
	if (!FUNC3(new_path, rmtopdir))
		FUNC1("could not delete directory \"%s\"\n", new_path);

	FUNC0();
}