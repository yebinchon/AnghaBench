
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 int fchown (int,int ,int ) ;
 scalar_t__ geteuid () ;

__attribute__((used)) static int posixFchown(int fd, uid_t uid, gid_t gid){
  return geteuid() ? 0 : fchown(fd,uid,gid);
}
