
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef scalar_t__ Oid ;


 int Assert (int ) ;
 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 char* GetDatabasePath (scalar_t__,scalar_t__) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MakePGDirectory (char*) ;
 int OidIsValid (scalar_t__) ;
 scalar_t__ S_ISDIR (int ) ;
 int TablespaceCreateLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 int get_parent_directory (char*) ;
 int pfree (char*) ;
 char* pstrdup (char*) ;
 scalar_t__ stat (char*,struct stat*) ;

void
TablespaceCreateDbspace(Oid spcNode, Oid dbNode, bool isRedo)
{
 struct stat st;
 char *dir;





 if (spcNode == GLOBALTABLESPACE_OID)
  return;

 Assert(OidIsValid(spcNode));
 Assert(OidIsValid(dbNode));

 dir = GetDatabasePath(dbNode, spcNode);

 if (stat(dir, &st) < 0)
 {

  if (errno == ENOENT)
  {




   LWLockAcquire(TablespaceCreateLock, LW_EXCLUSIVE);





   if (stat(dir, &st) == 0 && S_ISDIR(st.st_mode))
   {

   }
   else
   {

    if (MakePGDirectory(dir) < 0)
    {
     char *parentdir;


     if (errno != ENOENT || !isRedo)
      ereport(ERROR,
        (errcode_for_file_access(),
         errmsg("could not create directory \"%s\": %m",
          dir)));
     parentdir = pstrdup(dir);
     get_parent_directory(parentdir);
     get_parent_directory(parentdir);

     if (MakePGDirectory(parentdir) < 0 && errno != EEXIST)
      ereport(ERROR,
        (errcode_for_file_access(),
         errmsg("could not create directory \"%s\": %m",
          parentdir)));
     pfree(parentdir);


     parentdir = pstrdup(dir);
     get_parent_directory(parentdir);

     if (MakePGDirectory(parentdir) < 0 && errno != EEXIST)
      ereport(ERROR,
        (errcode_for_file_access(),
         errmsg("could not create directory \"%s\": %m",
          parentdir)));
     pfree(parentdir);


     if (MakePGDirectory(dir) < 0)
      ereport(ERROR,
        (errcode_for_file_access(),
         errmsg("could not create directory \"%s\": %m",
          dir)));
    }
   }

   LWLockRelease(TablespaceCreateLock);
  }
  else
  {
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not stat directory \"%s\": %m", dir)));
  }
 }
 else
 {

  if (!S_ISDIR(st.st_mode))
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("\"%s\" exists but is not a directory",
       dir)));
 }

 pfree(dir);
}
