
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* __val; } ;
struct statfs {TYPE_1__ f_fsid; } ;


 int EINVAL ;
 int errno ;
 int statfs (char const*,struct statfs*) ;

__attribute__((used)) static int is_virtual_filesystem(const char *path, char **reason) {





    struct statfs stat;




    if (statfs(path, &stat) == -1) {
        if(reason) *reason = "failed to statfs()";
        return -1;
    }

    if(stat.f_fsid.__val[0] != 0 || stat.f_fsid.__val[1] != 0) {
        errno = EINVAL;
        if(reason) *reason = "is not a virtual file system";
        return -1;
    }


    return 0;
}
