
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int LOG_DEBUG ;
 int S_ISDIR (int ) ;
 int blog (int ,char*,char const*,int ) ;
 int errno ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static inline bool is_dir(const char *path)
{
 struct stat stat_info;
 if (stat(path, &stat_info) == 0)
  return !!S_ISDIR(stat_info.st_mode);

 blog(LOG_DEBUG, "is_dir: stat for %s failed, errno: %d", path, errno);
 return 0;
}
