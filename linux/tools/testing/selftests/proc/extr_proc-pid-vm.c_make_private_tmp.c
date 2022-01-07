
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLONE_NEWNS ;
 scalar_t__ ENOSYS ;
 scalar_t__ EPERM ;
 int MS_PRIVATE ;
 int MS_REC ;
 scalar_t__ errno ;
 int exit (int) ;
 int mount (int *,char*,char*,int,int *) ;
 int unshare (int ) ;

__attribute__((used)) static void make_private_tmp(void)
{
 if (unshare(CLONE_NEWNS) == -1) {
  if (errno == ENOSYS || errno == EPERM) {
   exit(4);
  }
  exit(1);
 }
 if (mount(((void*)0), "/", ((void*)0), MS_PRIVATE|MS_REC, ((void*)0)) == -1) {
  exit(1);
 }
 if (mount(((void*)0), "/tmp", "tmpfs", 0, ((void*)0)) == -1) {
  exit(1);
 }
}
