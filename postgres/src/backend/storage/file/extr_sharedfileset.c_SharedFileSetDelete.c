
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedFileSet ;


 int MAXPGPATH ;
 int PathNameDeleteTemporaryFile (char*,int) ;
 int SharedFilePath (char*,int *,char const*) ;

bool
SharedFileSetDelete(SharedFileSet *fileset, const char *name,
     bool error_on_failure)
{
 char path[MAXPGPATH];

 SharedFilePath(path, fileset, name);

 return PathNameDeleteTemporaryFile(path, error_on_failure);
}
