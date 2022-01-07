
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int access_log_syslog ;
 int error_log_syslog ;
 int open_log_file (int ,int ,char*,int *,int,int *) ;
 int output_log_syslog ;
 int stdaccess ;
 int stdaccess_fd ;
 char* stdaccess_filename ;
 int stderr ;
 char* stderr_filename ;
 int stdin ;
 int stdout ;
 char* stdout_filename ;

void open_all_log_files() {

    open_log_file(STDIN_FILENO, stdin, "/dev/null", ((void*)0), 0, ((void*)0));

    open_log_file(STDOUT_FILENO, stdout, stdout_filename, &output_log_syslog, 0, ((void*)0));
    open_log_file(STDERR_FILENO, stderr, stderr_filename, &error_log_syslog, 0, ((void*)0));
    stdaccess = open_log_file(stdaccess_fd, stdaccess, stdaccess_filename, &access_log_syslog, 1, &stdaccess_fd);
}
