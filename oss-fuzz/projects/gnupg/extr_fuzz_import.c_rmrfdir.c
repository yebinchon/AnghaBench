
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int ftw (char*,int ,int) ;
 int printf (char*,int) ;
 scalar_t__ rmdir (char*) ;
 int unlink_cb ;

__attribute__((used)) static void rmrfdir(char *path)
{
    ftw(path, unlink_cb, 16);
    if (rmdir(path) != 0) {
        printf("failed rmdir, errno=%d\n", errno);
    }
}
