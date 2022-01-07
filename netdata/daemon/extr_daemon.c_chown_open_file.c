
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {scalar_t__ st_uid; scalar_t__ st_gid; int st_mode; } ;
typedef scalar_t__ gid_t ;


 scalar_t__ S_ISREG (int ) ;
 int error (char*,int) ;
 int fchown (int,scalar_t__,scalar_t__) ;
 int fstat (int,struct stat*) ;

__attribute__((used)) static void chown_open_file(int fd, uid_t uid, gid_t gid) {
    if(fd == -1) return;

    struct stat buf;

    if(fstat(fd, &buf) == -1) {
        error("Cannot fstat() fd %d", fd);
        return;
    }

    if((buf.st_uid != uid || buf.st_gid != gid) && S_ISREG(buf.st_mode)) {
        if(fchown(fd, uid, gid) == -1)
            error("Cannot fchown() fd %d.", fd);
    }
}
