
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tempfilepath ;
typedef int Oid ;
typedef scalar_t__ File ;


 int ERROR ;
 int MAXPGPATH ;
 int MakePGDirectory (char*) ;
 int MyProcPid ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PG_BINARY ;
 char* PG_TEMP_FILE_PREFIX ;
 scalar_t__ PathNameOpenFile (char*,int) ;
 int TempTablespacePath (char*,int ) ;
 int elog (int ,char*,char*) ;
 int snprintf (char*,int,char*,char*,char*,int ,int ) ;
 int tempFileCounter ;

__attribute__((used)) static File
OpenTemporaryFileInTablespace(Oid tblspcOid, bool rejectError)
{
 char tempdirpath[MAXPGPATH];
 char tempfilepath[MAXPGPATH];
 File file;

 TempTablespacePath(tempdirpath, tblspcOid);





 snprintf(tempfilepath, sizeof(tempfilepath), "%s/%s%d.%ld",
    tempdirpath, PG_TEMP_FILE_PREFIX, MyProcPid, tempFileCounter++);





 file = PathNameOpenFile(tempfilepath,
       O_RDWR | O_CREAT | O_TRUNC | PG_BINARY);
 if (file <= 0)
 {
  (void) MakePGDirectory(tempdirpath);

  file = PathNameOpenFile(tempfilepath,
        O_RDWR | O_CREAT | O_TRUNC | PG_BINARY);
  if (file <= 0 && rejectError)
   elog(ERROR, "could not create temporary file \"%s\": %m",
     tempfilepath);
 }

 return file;
}
