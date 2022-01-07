
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedFileSet ;
typedef int Oid ;
typedef scalar_t__ File ;


 int ChooseTablespace (int *,char const*) ;
 int MAXPGPATH ;
 int PathNameCreateTemporaryDir (char*,char*) ;
 scalar_t__ PathNameCreateTemporaryFile (char*,int) ;
 int SharedFilePath (char*,int *,char const*) ;
 int SharedFileSetPath (char*,int *,int ) ;
 int TempTablespacePath (char*,int ) ;

File
SharedFileSetCreate(SharedFileSet *fileset, const char *name)
{
 char path[MAXPGPATH];
 File file;

 SharedFilePath(path, fileset, name);
 file = PathNameCreateTemporaryFile(path, 0);


 if (file <= 0)
 {
  char tempdirpath[MAXPGPATH];
  char filesetpath[MAXPGPATH];
  Oid tablespace = ChooseTablespace(fileset, name);

  TempTablespacePath(tempdirpath, tablespace);
  SharedFileSetPath(filesetpath, fileset, tablespace);
  PathNameCreateTemporaryDir(tempdirpath, filesetpath);
  file = PathNameCreateTemporaryFile(path, 1);
 }

 return file;
}
