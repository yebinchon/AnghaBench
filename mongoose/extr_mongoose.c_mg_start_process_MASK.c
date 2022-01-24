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
typedef  int /*<<< orphan*/  sock_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,char const*,...) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(const char *interp, const char *cmd,
                            const char *env, const char *envp[],
                            const char *dir, sock_t sock) {
  char buf[500];
  pid_t pid = FUNC5();
  (void) env;

  if (pid == 0) {
    /*
     * In Linux `chdir` declared with `warn_unused_result` attribute
     * To shutup compiler we have yo use result in some way
     */
    int tmp = FUNC1(dir);
    (void) tmp;
    (void) FUNC3(sock, 0);
    (void) FUNC3(sock, 1);
    FUNC2(sock);

    /*
     * After exec, all signal handlers are restored to their default values,
     * with one exception of SIGCHLD. According to POSIX.1-2001 and Linux's
     * implementation, SIGCHLD's handler will leave unchanged after exec
     * if it was set to be ignored. Restore it to default action.
     */
    FUNC7(SIGCHLD, SIG_DFL);

    if (interp == NULL) {
      FUNC4(cmd, cmd, (char *) 0, envp); /* (char *) 0 to squash warning */
    } else {
      FUNC4(interp, interp, cmd, (char *) 0, envp);
    }
    FUNC8(buf, sizeof(buf),
             "Status: 500\r\n\r\n"
             "500 Server Error: %s%s%s: %s",
             interp == NULL ? "" : interp, interp == NULL ? "" : " ", cmd,
             FUNC9(errno));
    FUNC6(1, buf, FUNC10(buf), 0);
    FUNC0(EXIT_FAILURE); /* exec call failed */
  }

  return (pid != 0);
}