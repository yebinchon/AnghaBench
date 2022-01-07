
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedFileSet ;


 int ChooseTablespace (int *,char const*) ;
 int MAXPGPATH ;
 int SharedFileSetPath (char*,int *,int ) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static void
SharedFilePath(char *path, SharedFileSet *fileset, const char *name)
{
 char dirpath[MAXPGPATH];

 SharedFileSetPath(dirpath, fileset, ChooseTablespace(fileset, name));
 snprintf(path, MAXPGPATH, "%s/%s", dirpath, name);
}
