
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelFileNodeBackend ;
typedef scalar_t__ ForkNumber ;
typedef int BlockNumber ;


 int CloseTransientFile (int) ;
 int ENOENT ;
 scalar_t__ MAIN_FORKNUM ;
 int O_RDWR ;
 int OpenTransientFile (char*,int) ;
 int PG_BINARY ;
 scalar_t__ RelFileNodeBackendIsTemp (int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int errno ;
 int ftruncate (int,int ) ;
 scalar_t__ palloc (scalar_t__) ;
 int pfree (char*) ;
 int register_forget_request (int ,scalar_t__,int) ;
 int register_unlink_segment (int ,scalar_t__,int ) ;
 char* relpath (int ,scalar_t__) ;
 int sprintf (char*,char*,char*,int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
mdunlinkfork(RelFileNodeBackend rnode, ForkNumber forkNum, bool isRedo)
{
 char *path;
 int ret;

 path = relpath(rnode, forkNum);




 if (isRedo || forkNum != MAIN_FORKNUM || RelFileNodeBackendIsTemp(rnode))
 {

  if (!RelFileNodeBackendIsTemp(rnode))
   register_forget_request(rnode, forkNum, 0 );


  ret = unlink(path);
  if (ret < 0 && errno != ENOENT)
   ereport(WARNING,
     (errcode_for_file_access(),
      errmsg("could not remove file \"%s\": %m", path)));
 }
 else
 {

  int fd;

  fd = OpenTransientFile(path, O_RDWR | PG_BINARY);
  if (fd >= 0)
  {
   int save_errno;

   ret = ftruncate(fd, 0);
   save_errno = errno;
   CloseTransientFile(fd);
   errno = save_errno;
  }
  else
   ret = -1;
  if (ret < 0 && errno != ENOENT)
   ereport(WARNING,
     (errcode_for_file_access(),
      errmsg("could not truncate file \"%s\": %m", path)));


  register_unlink_segment(rnode, forkNum, 0 );
 }




 if (ret >= 0)
 {
  char *segpath = (char *) palloc(strlen(path) + 12);
  BlockNumber segno;





  for (segno = 1;; segno++)
  {




   if (!RelFileNodeBackendIsTemp(rnode))
    register_forget_request(rnode, forkNum, segno);

   sprintf(segpath, "%s.%u", path, segno);
   if (unlink(segpath) < 0)
   {

    if (errno != ENOENT)
     ereport(WARNING,
       (errcode_for_file_access(),
        errmsg("could not remove file \"%s\": %m", segpath)));
    break;
   }
  }
  pfree(segpath);
 }

 pfree(path);
}
