
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdstate; } ;
typedef scalar_t__ Oid ;
typedef size_t File ;


 int CurrentResourceOwner ;
 scalar_t__ DEFAULTTABLESPACE_OID ;
 int FD_DELETE_AT_CLOSE ;
 int FD_TEMP_FILE_LIMIT ;
 scalar_t__ GetNextTempTableSpace () ;
 scalar_t__ MyDatabaseTableSpace ;
 scalar_t__ OidIsValid (scalar_t__) ;
 size_t OpenTemporaryFileInTablespace (scalar_t__,int) ;
 int RegisterTemporaryFile (size_t) ;
 int ResourceOwnerEnlargeFiles (int ) ;
 TYPE_1__* VfdCache ;
 scalar_t__ numTempTableSpaces ;

File
OpenTemporaryFile(bool interXact)
{
 File file = 0;





 if (!interXact)
  ResourceOwnerEnlargeFiles(CurrentResourceOwner);
 if (numTempTableSpaces > 0 && !interXact)
 {
  Oid tblspcOid = GetNextTempTableSpace();

  if (OidIsValid(tblspcOid))
   file = OpenTemporaryFileInTablespace(tblspcOid, 0);
 }






 if (file <= 0)
  file = OpenTemporaryFileInTablespace(MyDatabaseTableSpace ?
            MyDatabaseTableSpace :
            DEFAULTTABLESPACE_OID,
            1);


 VfdCache[file].fdstate |= FD_DELETE_AT_CLOSE | FD_TEMP_FILE_LIMIT;


 if (!interXact)
  RegisterTemporaryFile(file);

 return file;
}
