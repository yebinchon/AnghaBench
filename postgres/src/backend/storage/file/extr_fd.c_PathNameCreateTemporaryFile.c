
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdstate; } ;
typedef size_t File ;


 int CurrentResourceOwner ;
 int ERROR ;
 int FD_TEMP_FILE_LIMIT ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PG_BINARY ;
 size_t PathNameOpenFile (char const*,int) ;
 int RegisterTemporaryFile (size_t) ;
 int ResourceOwnerEnlargeFiles (int ) ;
 TYPE_1__* VfdCache ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;

File
PathNameCreateTemporaryFile(const char *path, bool error_on_failure)
{
 File file;

 ResourceOwnerEnlargeFiles(CurrentResourceOwner);





 file = PathNameOpenFile(path, O_RDWR | O_CREAT | O_TRUNC | PG_BINARY);
 if (file <= 0)
 {
  if (error_on_failure)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not create temporary file \"%s\": %m",
       path)));
  else
   return file;
 }


 VfdCache[file].fdstate |= FD_TEMP_FILE_LIMIT;


 RegisterTemporaryFile(file);

 return file;
}
