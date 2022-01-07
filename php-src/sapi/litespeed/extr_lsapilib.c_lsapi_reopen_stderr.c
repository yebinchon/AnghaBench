
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_perror_r (int *,char*,char const*) ;
 int PATH_MAX ;
 int lsapi_check_path (char const*,char*,int) ;
 int lsapi_reopen_stderr2 (char*) ;
 scalar_t__ s_uid ;

__attribute__((used)) static int lsapi_reopen_stderr(const char *p)
{
    char full_path[PATH_MAX];
    if (s_uid == 0)
        return -1;
    if (lsapi_check_path(p, full_path, PATH_MAX) == -1)
    {
        LSAPI_perror_r(((void*)0), "Invalid custom stderr log path", p);
        return -1;
    }
    return lsapi_reopen_stderr2(full_path);
}
