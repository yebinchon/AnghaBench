
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int int64 ;
typedef int RelFileNode ;
typedef int ForkNumber ;
typedef int BackendId ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int MAXPGPATH ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 char* relpathbackend (int ,int ,int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int64
calculate_relation_size(RelFileNode *rfn, BackendId backend, ForkNumber forknum)
{
 int64 totalsize = 0;
 char *relationpath;
 char pathname[MAXPGPATH];
 unsigned int segcount = 0;

 relationpath = relpathbackend(*rfn, backend, forknum);

 for (segcount = 0;; segcount++)
 {
  struct stat fst;

  CHECK_FOR_INTERRUPTS();

  if (segcount == 0)
   snprintf(pathname, MAXPGPATH, "%s",
      relationpath);
  else
   snprintf(pathname, MAXPGPATH, "%s.%u",
      relationpath, segcount);

  if (stat(pathname, &fst) < 0)
  {
   if (errno == ENOENT)
    break;
   else
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not stat file \"%s\": %m", pathname)));
  }
  totalsize += fst.st_size;
 }

 return totalsize;
}
