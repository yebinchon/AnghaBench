
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
struct FTW {int dummy; } ;


 int FTW_D ;
 int FTW_F ;
 int ent_blocks ;
 int num_files ;

__attribute__((used)) static int sum_sizes(const char *fpath, const struct stat *sb, int typeflag, struct FTW *ftwbuf)
{
 (void) fpath;
 (void) ftwbuf;

 if (sb->st_size && (typeflag == FTW_F || typeflag == FTW_D))
  ent_blocks += sb->st_size;

 ++num_files;
 return 0;
}
