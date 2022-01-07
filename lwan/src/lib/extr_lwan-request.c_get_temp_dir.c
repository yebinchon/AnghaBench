
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* P_tmpdir ;
 char* is_dir (char*) ;
 char* secure_getenv (char*) ;

__attribute__((used)) static const char *
get_temp_dir(void)
{
    const char *tmpdir;

    tmpdir = is_dir(secure_getenv("TMPDIR"));
    if (tmpdir)
        return tmpdir;

    tmpdir = is_dir(secure_getenv("TMP"));
    if (tmpdir)
        return tmpdir;

    tmpdir = is_dir(secure_getenv("TEMP"));
    if (tmpdir)
        return tmpdir;

    tmpdir = is_dir("/var/tmp");
    if (tmpdir)
        return tmpdir;

    tmpdir = is_dir(P_tmpdir);
    if (tmpdir)
        return tmpdir;

    return ((void*)0);
}
