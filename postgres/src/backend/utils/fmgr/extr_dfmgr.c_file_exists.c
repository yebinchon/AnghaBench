
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int AssertArg (int ) ;
 scalar_t__ EACCES ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int ERROR ;
 scalar_t__ S_ISDIR (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static bool
file_exists(const char *name)
{
 struct stat st;

 AssertArg(name != ((void*)0));

 if (stat(name, &st) == 0)
  return S_ISDIR(st.st_mode) ? 0 : 1;
 else if (!(errno == ENOENT || errno == ENOTDIR || errno == EACCES))
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not access file \"%s\": %m", name)));

 return 0;
}
