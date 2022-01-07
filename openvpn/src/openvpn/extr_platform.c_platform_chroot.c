
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_ERR ;
 int M_FATAL ;
 int M_INFO ;
 scalar_t__ chroot (char const*) ;
 int msg (int ,char*,char const*,...) ;
 scalar_t__ platform_chdir (char const*) ;

void
platform_chroot(const char *path)
{
    if (path)
    {
        msg(M_FATAL, "Sorry but I can't chroot to '%s' because this operating system doesn't appear to support the chroot() system call", path);

    }
}
