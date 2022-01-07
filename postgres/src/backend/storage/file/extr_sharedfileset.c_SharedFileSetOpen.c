
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedFileSet ;
typedef int File ;


 int MAXPGPATH ;
 int PathNameOpenTemporaryFile (char*) ;
 int SharedFilePath (char*,int *,char const*) ;

File
SharedFileSetOpen(SharedFileSet *fileset, const char *name)
{
 char path[MAXPGPATH];
 File file;

 SharedFilePath(path, fileset, name);
 file = PathNameOpenTemporaryFile(path);

 return file;
}
