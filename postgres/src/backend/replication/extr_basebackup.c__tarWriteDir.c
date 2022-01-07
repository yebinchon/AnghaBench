
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int int64 ;


 int S_IFDIR ;
 scalar_t__ S_ISLNK (int) ;
 int _tarWriteHeader (char const*,int *,struct stat*,int) ;
 int pg_dir_create_mode ;
 scalar_t__ pgwin32_is_junction (char const*) ;

__attribute__((used)) static int64
_tarWriteDir(const char *pathbuf, int basepathlen, struct stat *statbuf,
    bool sizeonly)
{


 if (S_ISLNK(statbuf->st_mode))



  statbuf->st_mode = S_IFDIR | pg_dir_create_mode;

 return _tarWriteHeader(pathbuf + basepathlen + 1, ((void*)0), statbuf, sizeonly);
}
