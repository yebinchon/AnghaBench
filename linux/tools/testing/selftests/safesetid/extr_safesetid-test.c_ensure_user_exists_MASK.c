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
typedef  int uid_t ;
struct passwd {char* pw_name; int pw_uid; char* pw_gecos; char* pw_dir; char* pw_shell; } ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct passwd*,int,int) ; 
 int FUNC6 (struct passwd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC8(uid_t uid)
{
	struct passwd p;

	FILE *fd;
	char name_str[10];

	if (FUNC4(uid) == NULL) {
		FUNC5(&p,0x00,sizeof(p));
		fd=FUNC2("/etc/passwd","a");
		if (fd == NULL)
			FUNC0("couldn't open file\n");
		if (FUNC3(fd, 0, SEEK_END))
			FUNC0("couldn't fseek\n");
		FUNC7(name_str, 10, "%d", uid);
		p.pw_name=name_str;
		p.pw_uid=uid;
		p.pw_gecos="Test account";
		p.pw_dir="/dev/null";
		p.pw_shell="/bin/false";
		int value = FUNC6(&p,fd);
		if (value != 0)
			FUNC0("putpwent failed\n");
		if (FUNC1(fd))
			FUNC0("fclose failed\n");
	}
}