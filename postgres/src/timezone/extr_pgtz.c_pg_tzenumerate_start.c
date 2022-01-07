
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** dirname; int * dirdesc; scalar_t__ depth; scalar_t__ baselen; } ;
typedef TYPE_1__ pg_tzenum ;


 int AllocateDir (char*) ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ palloc0 (int) ;
 int pg_TZDIR () ;
 char* pstrdup (int ) ;
 scalar_t__ strlen (char*) ;

pg_tzenum *
pg_tzenumerate_start(void)
{
 pg_tzenum *ret = (pg_tzenum *) palloc0(sizeof(pg_tzenum));
 char *startdir = pstrdup(pg_TZDIR());

 ret->baselen = strlen(startdir) + 1;
 ret->depth = 0;
 ret->dirname[0] = startdir;
 ret->dirdesc[0] = AllocateDir(startdir);
 if (!ret->dirdesc[0])
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open directory \"%s\": %m", startdir)));
 return ret;
}
