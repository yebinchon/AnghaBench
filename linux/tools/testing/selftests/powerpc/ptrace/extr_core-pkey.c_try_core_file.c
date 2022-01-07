
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mtime; int st_size; } ;
struct shared_info {scalar_t__ core_time; } ;
typedef int pid_t ;
typedef int off_t ;


 int TEST_FAIL ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static off_t try_core_file(const char *filename, struct shared_info *info,
      pid_t pid)
{
 struct stat buf;
 int ret;

 ret = stat(filename, &buf);
 if (ret == -1)
  return TEST_FAIL;


 return buf.st_mtime >= info->core_time ? buf.st_size : TEST_FAIL;
}
