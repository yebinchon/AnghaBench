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
 int BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,...) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(char *cmd)
{
    char	*cmd_path;
    char	cmd_buf[BUFSIZE];
    char	*p;

    /* On WinNT, 'start' is a shell built-in for cmd.exe rather than an
     * executable (start.exe) like in Win9x.  DJGPP, being a DOS program,
     * is given the COMSPEC command.com by WinNT, so we have to find
     * cmd.exe manually and use it. */
    cmd_path = FUNC1("cmd.exe");
    if (cmd_path != NULL)
    {
	/* There is a cmd.exe, so this might be Windows NT.  If it is,
	 * we need to call cmd.exe explicitly.  If it is a later OS,
	 * calling cmd.exe won't hurt if it is present.
	 * Also, "start" on NT expects a window title argument.
	 */
	/* Replace the slashes with backslashes. */
	while ((p = FUNC3(cmd_path, '/')) != NULL)
	    *p = '\\';
	FUNC2(cmd_buf, "%s /c start \"vimcmd\" /wait %s", cmd_path, cmd);
	FUNC0(cmd_path);
    }
    else
    {
	/* No cmd.exe, just make the call and let the system handle it. */
	FUNC2(cmd_buf, "start /w %s", cmd);
    }
    FUNC4(cmd_buf);
}