
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Dir; } ;
typedef TYPE_1__* SlruCtl ;


 int DEBUG2 ;
 int MAXPGPATH ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static void
SlruInternalDeleteSegment(SlruCtl ctl, char *filename)
{
 char path[MAXPGPATH];

 snprintf(path, MAXPGPATH, "%s/%s", ctl->Dir, filename);
 ereport(DEBUG2,
   (errmsg("removing file \"%s\"", path)));
 unlink(path);
}
