#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_3__ {int pid; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ pidinfo_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 char* PROC_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(pid_t pid, pidinfo_t *pid_list)
{
char fullpath_exe[MAXPATHLEN + 1];
char exe[MAXPATHLEN + 1];
ssize_t len;

FUNC2(fullpath_exe, MAXPATHLEN, "%s/%i/exe", PROC_PATH, pid);

len=FUNC1(fullpath_exe, exe, MAXPATHLEN);
if (len != -1)
    exe[len] = 0;
else
    return 0;

pid_list[0].pid = pid;
FUNC3(pid_list[0].name, FUNC0(exe));
return 1;
}