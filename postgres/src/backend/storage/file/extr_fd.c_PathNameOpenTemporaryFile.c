
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ File ;


 int CurrentResourceOwner ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int O_RDONLY ;
 int PG_BINARY ;
 scalar_t__ PathNameOpenFile (char const*,int) ;
 int RegisterTemporaryFile (scalar_t__) ;
 int ResourceOwnerEnlargeFiles (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;

File
PathNameOpenTemporaryFile(const char *path)
{
 File file;

 ResourceOwnerEnlargeFiles(CurrentResourceOwner);


 file = PathNameOpenFile(path, O_RDONLY | PG_BINARY);


 if (file <= 0 && errno != ENOENT)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open temporary file \"%s\": %m",
      path)));

 if (file > 0)
 {

  RegisterTemporaryFile(file);
 }

 return file;
}
