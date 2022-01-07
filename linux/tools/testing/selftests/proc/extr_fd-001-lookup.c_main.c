
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; int d_name; } ;
typedef int DIR ;


 int CLONE_FILES ;
 scalar_t__ DT_DIR ;
 scalar_t__ DT_LNK ;
 int O_DIRECTORY ;
 int O_PATH ;
 int assert (int) ;
 int close (unsigned int) ;
 int closedir (int *) ;
 unsigned int dirfd (int *) ;
 unsigned int dup2 (unsigned int,unsigned int) ;
 unsigned int open (char*,int) ;
 int * opendir (char*) ;
 int streq (int ,char*) ;
 int test_lookup (unsigned int) ;
 int unshare (int ) ;
 struct dirent* xreaddir (int *) ;
 unsigned long long xstrtoull (int ,char**) ;

int main(void)
{
 struct dirent *de;
 unsigned int fd, target_fd;

 if (unshare(CLONE_FILES) == -1)
  return 1;


 do {
  DIR *d;

  d = opendir("/proc/self/fd");
  if (!d)
   return 1;

  de = xreaddir(d);
  assert(de->d_type == DT_DIR);
  assert(streq(de->d_name, "."));

  de = xreaddir(d);
  assert(de->d_type == DT_DIR);
  assert(streq(de->d_name, ".."));
next:
  de = xreaddir(d);
  if (de) {
   unsigned long long fd_ull;
   unsigned int fd;
   char *end;

   assert(de->d_type == DT_LNK);

   fd_ull = xstrtoull(de->d_name, &end);
   assert(*end == '\0');
   assert(fd_ull == (unsigned int)fd_ull);

   fd = fd_ull;
   if (fd == dirfd(d))
    goto next;
   close(fd);
  }

  closedir(d);
 } while (de);



 fd = open("/", O_PATH|O_DIRECTORY);
 assert(fd == 0);
 test_lookup(fd);
 close(fd);



 fd = open("/", O_PATH|O_DIRECTORY);
 assert(fd == 0);

 target_fd = 1023;
 while (target_fd > 0) {
  if (dup2(fd, target_fd) == target_fd)
   break;
  target_fd /= 2;
 }
 assert(target_fd > 0);
 close(fd);
 test_lookup(target_fd);
 close(target_fd);

 return 0;
}
