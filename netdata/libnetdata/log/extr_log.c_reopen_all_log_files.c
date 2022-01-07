
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int access_log_syslog ;
 int error_log_syslog ;
 int open_log_file (int ,int ,scalar_t__,int *,int,int *) ;
 int output_log_syslog ;
 int stdaccess ;
 int stdaccess_fd ;
 scalar_t__ stdaccess_filename ;
 int stderr ;
 scalar_t__ stderr_filename ;
 int stdout ;
 scalar_t__ stdout_filename ;

void reopen_all_log_files() {
    if(stdout_filename)
        open_log_file(STDOUT_FILENO, stdout, stdout_filename, &output_log_syslog, 0, ((void*)0));

    if(stderr_filename)
        open_log_file(STDERR_FILENO, stderr, stderr_filename, &error_log_syslog, 0, ((void*)0));

    if(stdaccess_filename)
         stdaccess = open_log_file(stdaccess_fd, stdaccess, stdaccess_filename, &access_log_syslog, 1, &stdaccess_fd);
}
