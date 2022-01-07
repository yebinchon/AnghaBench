
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int PATH_MAX ;
 int getpid () ;
 scalar_t__ proc_pidpath (int ,char*,int) ;
 int snprintf (char*,size_t,char*,char*) ;
 char* strrchr (char*,char) ;

const char *lwan_get_config_path(char *path_buf, size_t path_buf_len)
{
    char buffer[PATH_MAX];

    if (proc_pidpath(getpid(), buffer, sizeof(buffer)) < 0)
        goto out;

    char *path = strrchr(buffer, '/');
    if (!path)
        goto out;
    int ret = snprintf(path_buf, path_buf_len, "%s.conf", path + 1);
    if (ret < 0 || ret >= (int)path_buf_len)
        goto out;

    return path_buf;

out:
    return "lwan.conf";
}
