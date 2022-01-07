
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_OPEN_MAX ;
 int _dup2 (int,int) ;
 int backup_fd ;
 int dup2 (int,int) ;
 int sysconf (int ) ;

__attribute__((used)) static bool __dupDescriptor(int fd, int fdn) {




 backup_fd = sysconf (_SC_OPEN_MAX) - (fd - 2);
 if (backup_fd < 2) {
  backup_fd = 2002 - (fd - 2);
 }
 return dup2 (fdn, backup_fd) != -1;

}
