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
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  access_log_syslog ; 
 int /*<<< orphan*/  error_log_syslog ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  output_log_syslog ; 
 int /*<<< orphan*/  stdaccess ; 
 int /*<<< orphan*/  stdaccess_fd ; 
 char* stdaccess_filename ; 
 int /*<<< orphan*/  stderr ; 
 char* stderr_filename ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* stdout_filename ; 

void FUNC1() {
    // disable stdin
    FUNC0(STDIN_FILENO, stdin, "/dev/null", NULL, 0, NULL);

    FUNC0(STDOUT_FILENO, stdout, stdout_filename, &output_log_syslog, 0, NULL);
    FUNC0(STDERR_FILENO, stderr, stderr_filename, &error_log_syslog, 0, NULL);
    stdaccess = FUNC0(stdaccess_fd, stdaccess, stdaccess_filename, &access_log_syslog, 1, &stdaccess_fd);
}