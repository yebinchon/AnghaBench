
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dirent {int d_name; } ;
struct TYPE_5__ {int Dir; } ;
typedef int (* SlruScanCallback ) (TYPE_1__*,int ,int,void*) ;
typedef TYPE_1__* SlruCtl ;
typedef int DIR ;


 int * AllocateDir (int ) ;
 int DEBUG2 ;
 int FreeDir (int *) ;
 struct dirent* ReadDir (int *,int ) ;
 int SLRU_PAGES_PER_SEGMENT ;
 int elog (int ,char*,int ,int ) ;
 size_t strlen (int ) ;
 size_t strspn (int ,char*) ;
 scalar_t__ strtol (int ,int *,int) ;

bool
SlruScanDirectory(SlruCtl ctl, SlruScanCallback callback, void *data)
{
 bool retval = 0;
 DIR *cldir;
 struct dirent *clde;
 int segno;
 int segpage;

 cldir = AllocateDir(ctl->Dir);
 while ((clde = ReadDir(cldir, ctl->Dir)) != ((void*)0))
 {
  size_t len;

  len = strlen(clde->d_name);

  if ((len == 4 || len == 5 || len == 6) &&
   strspn(clde->d_name, "0123456789ABCDEF") == len)
  {
   segno = (int) strtol(clde->d_name, ((void*)0), 16);
   segpage = segno * SLRU_PAGES_PER_SEGMENT;

   elog(DEBUG2, "SlruScanDirectory invoking callback on %s/%s",
     ctl->Dir, clde->d_name);
   retval = callback(ctl, clde->d_name, segpage, data);
   if (retval)
    break;
  }
 }
 FreeDir(cldir);

 return retval;
}
