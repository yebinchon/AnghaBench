
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int pathname ;
typedef int int64 ;
typedef scalar_t__ Oid ;
typedef int DIR ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int * AllocateDir (char*) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ DEFAULTTABLESPACE_OID ;
 int DEFAULT_ROLE_READ_ALL_STATS ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int FreeDir (int *) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 int GetUserId () ;
 int MAXPGPATH ;
 scalar_t__ MyDatabaseTableSpace ;
 int OBJECT_TABLESPACE ;
 struct dirent* ReadDir (int *,char*) ;
 scalar_t__ S_ISDIR (int ) ;
 char* TABLESPACE_VERSION_DIRECTORY ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 scalar_t__ db_dir_size (char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 int get_tablespace_name (scalar_t__) ;
 int is_member_of_role (int ,int ) ;
 scalar_t__ pg_tablespace_aclcheck (scalar_t__,int ,int ) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int64
calculate_tablespace_size(Oid tblspcOid)
{
 char tblspcPath[MAXPGPATH];
 char pathname[MAXPGPATH * 2];
 int64 totalsize = 0;
 DIR *dirdesc;
 struct dirent *direntry;
 AclResult aclresult;






 if (tblspcOid != MyDatabaseTableSpace &&
  !is_member_of_role(GetUserId(), DEFAULT_ROLE_READ_ALL_STATS))
 {
  aclresult = pg_tablespace_aclcheck(tblspcOid, GetUserId(), ACL_CREATE);
  if (aclresult != ACLCHECK_OK)
   aclcheck_error(aclresult, OBJECT_TABLESPACE,
         get_tablespace_name(tblspcOid));
 }

 if (tblspcOid == DEFAULTTABLESPACE_OID)
  snprintf(tblspcPath, MAXPGPATH, "base");
 else if (tblspcOid == GLOBALTABLESPACE_OID)
  snprintf(tblspcPath, MAXPGPATH, "global");
 else
  snprintf(tblspcPath, MAXPGPATH, "pg_tblspc/%u/%s", tblspcOid,
     TABLESPACE_VERSION_DIRECTORY);

 dirdesc = AllocateDir(tblspcPath);

 if (!dirdesc)
  return -1;

 while ((direntry = ReadDir(dirdesc, tblspcPath)) != ((void*)0))
 {
  struct stat fst;

  CHECK_FOR_INTERRUPTS();

  if (strcmp(direntry->d_name, ".") == 0 ||
   strcmp(direntry->d_name, "..") == 0)
   continue;

  snprintf(pathname, sizeof(pathname), "%s/%s", tblspcPath, direntry->d_name);

  if (stat(pathname, &fst) < 0)
  {
   if (errno == ENOENT)
    continue;
   else
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not stat file \"%s\": %m", pathname)));
  }

  if (S_ISDIR(fst.st_mode))
   totalsize += db_dir_size(pathname);

  totalsize += fst.st_size;
 }

 FreeDir(dirdesc);

 return totalsize;
}
