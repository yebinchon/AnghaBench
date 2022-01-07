
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rnode; } ;
typedef TYPE_1__ FileTag ;


 int MAIN_FORKNUM ;
 int MAXPGPATH ;
 int pfree (char*) ;
 char* relpathperm (int ,int ) ;
 int strlcpy (char*,char*,int ) ;
 int unlink (char*) ;

int
mdunlinkfiletag(const FileTag *ftag, char *path)
{
 char *p;


 p = relpathperm(ftag->rnode, MAIN_FORKNUM);
 strlcpy(path, p, MAXPGPATH);
 pfree(p);


 return unlink(path);
}
