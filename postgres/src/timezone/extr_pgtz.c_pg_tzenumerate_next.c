
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
struct TYPE_7__ {int TZname; int state; } ;
struct TYPE_6__ {size_t depth; char** dirname; int baselen; TYPE_2__ tz; int * dirdesc; } ;
typedef TYPE_1__ pg_tzenum ;
typedef TYPE_2__ pg_tz ;
typedef int fullname ;


 int AllocateDir (char*) ;
 int ERROR ;
 int FreeDir (int ) ;
 int MAXPGPATH ;
 int MAX_TZDIR_DEPTH ;
 struct dirent* ReadDir (int ,char*) ;
 scalar_t__ S_ISDIR (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int errmsg_internal (char*) ;
 int pfree (char*) ;
 int pg_tz_acceptable (TYPE_2__*) ;
 char* pstrdup (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ tzload (char*,int *,int *,int) ;

pg_tz *
pg_tzenumerate_next(pg_tzenum *dir)
{
 while (dir->depth >= 0)
 {
  struct dirent *direntry;
  char fullname[MAXPGPATH * 2];
  struct stat statbuf;

  direntry = ReadDir(dir->dirdesc[dir->depth], dir->dirname[dir->depth]);

  if (!direntry)
  {

   FreeDir(dir->dirdesc[dir->depth]);
   pfree(dir->dirname[dir->depth]);
   dir->depth--;
   continue;
  }

  if (direntry->d_name[0] == '.')
   continue;

  snprintf(fullname, sizeof(fullname), "%s/%s",
     dir->dirname[dir->depth], direntry->d_name);
  if (stat(fullname, &statbuf) != 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not stat \"%s\": %m", fullname)));

  if (S_ISDIR(statbuf.st_mode))
  {

   if (dir->depth >= MAX_TZDIR_DEPTH - 1)
    ereport(ERROR,
      (errmsg_internal("timezone directory stack overflow")));
   dir->depth++;
   dir->dirname[dir->depth] = pstrdup(fullname);
   dir->dirdesc[dir->depth] = AllocateDir(fullname);
   if (!dir->dirdesc[dir->depth])
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not open directory \"%s\": %m",
        fullname)));


   continue;
  }







  if (tzload(fullname + dir->baselen, ((void*)0), &dir->tz.state, 1) != 0)
  {

   continue;
  }

  if (!pg_tz_acceptable(&dir->tz))
  {

   continue;
  }


  strlcpy(dir->tz.TZname, fullname + dir->baselen,
    sizeof(dir->tz.TZname));


  return &dir->tz;
 }


 return ((void*)0);
}
