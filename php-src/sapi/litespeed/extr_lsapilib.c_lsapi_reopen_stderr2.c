
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_perror_r (int *,char*,char const*) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 int dup2 (int,int) ;
 int free (char const*) ;
 int open (char const*,int,int) ;
 char const* s_stderr_log_path ;
 char* strdup (char const*) ;

__attribute__((used)) static int lsapi_reopen_stderr2(const char *full_path)
{
    int newfd = open(full_path, O_WRONLY | O_CREAT | O_APPEND, 0644);
    if (newfd == -1)
    {
        LSAPI_perror_r(((void*)0), "Failed to open custom stderr log", full_path);
        return -1;
    }
    if (newfd != 2)
    {
        dup2(newfd, 2);
        close(newfd);
        dup2(2, 1);
    }
    if (s_stderr_log_path && full_path != s_stderr_log_path)
    {
        free(s_stderr_log_path);
        s_stderr_log_path = ((void*)0);
    }
    s_stderr_log_path = strdup(full_path);
    return 0;
}
