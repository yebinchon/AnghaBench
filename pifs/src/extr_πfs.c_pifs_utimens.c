
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {int mdd; } ;
typedef int DIR ;


 int basename (char*) ;
 int closedir (int *) ;
 int dirfd (int *) ;
 int errno ;
 int * opendir (int ) ;
 TYPE_1__ options ;
 int utimensat (int ,int ,struct timespec const*,int ) ;

__attribute__((used)) static int pifs_utimens(const char *path, const struct timespec times[2])
{
  DIR *dir = opendir(options.mdd);
  if (!dir) {
    return -errno;
  }
  int ret = utimensat(dirfd(dir), basename((char *) path), times, 0);
  closedir(dir);
  return ret == -1 ? -errno : ret;
}
