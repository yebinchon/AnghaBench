
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelFileNode ;
typedef int ForkNumber ;
typedef scalar_t__ BlockNumber ;


 int pfree (char*) ;
 char* psprintf (char*,char*,scalar_t__) ;
 char* relpathperm (int ,int ) ;

__attribute__((used)) static char *
datasegpath(RelFileNode rnode, ForkNumber forknum, BlockNumber segno)
{
 char *path;
 char *segpath;

 path = relpathperm(rnode, forknum);
 if (segno > 0)
 {
  segpath = psprintf("%s.%u", path, segno);
  pfree(path);
  return segpath;
 }
 else
  return path;
}
